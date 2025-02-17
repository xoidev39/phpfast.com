<?php
namespace App\Controllers\Frontend;

use System\Core\BaseController;
use System\Libraries\Assets;
use System\Libraries\Render;
use App\Models\TermsModel;
use App\Models\UtilsModel;
use App\Models\PostsModel;
use App\Models\PostrelModel;
use App\Libraries\Fastlang as Flang;
use System\Core\AppException;
use System\Drivers\Cache\UriCache;

class SearchController extends BaseController {
    protected $modelMovie;
    protected $modelMDirector;
    protected $assets;
    protected $cache;
    protected $termsModel;
    protected $postsModel;
    protected $postrelModel;
    protected $subpostsModel;
    protected $utilsModel;
    protected $sort_by_option;
    protected $limit;

    public function __construct()
    {
        $this->modelMovie = new PostsModel('movie');
        $this->modelMDirector = new PostsModel('director');
        $this->termsModel = new TermsModel();
        $this->utilsModel = new UtilsModel();
        $this->assets = new Assets();
        load_helpers(['images']);
        load_helpers(['frontend']);
        Flang::load('home', LANG);
        $this->assets->add('js', 'jfast.1.1.4.js', 'footer');
        $this->assets->add('js', 'main.js', 'footer');
        $this->assets->add('css', 'style.css', 'head');
        $this->assets->add('css', 'style.css', 'head');
        $this->data('assets_header', $this->assets->header('frontend'));
        $this->data('assets_footer', $this->assets->footer('frontend'));
        $footer = Render::component('frontend/component/footer');
        $menu = Render::component('frontend/component/menu');
        $this->data('footer', $footer);
        $this->data('menu', $menu);
        
        $this->cache = new UriCache(5, 'html');
        $this->cache->cacheLogin(true); //Van cho Caching cho du nguoi dung Login
        $this->cache->cacheMobile(true);

        $this->sort_by_option = option('movie_sortby') ?? [];
        $this->limit = option('default_limit') ?? 10;
    }
    public function index($paged = 1) { 
        $keysearch = S_GET('q') ?? '';
        if(!empty($keysearch)) {
            $this->_handle_search($paged);
        } else {
            $fields = "*";
            $page = 1;
            $limit = $this->limit;
            $posttypes = ['movie', 'comic', 'game', 'novel'];
            $where = 'status = ?';
            $params = ['active'];
            $modules = [];
            foreach ($posttypes as $posttype_slug) {
                $this->postsModel = new PostsModel($posttype_slug,LANG);
                if (!$this->postsModel->checkPosttypeExists()) {
                    continue;
                }
                $posts_popular = $this->postsModel->ListsFields($fields, $where, $params, 'views_day DESC', $page, $limit);
                if (!empty($posts_popular['data'])){
                    $posts_popular = $posts_popular['data'];
                }else{
                    $posts_popular = [];
                }
                if(!empty($posts_popular)) {
                    $modules[] = [
                        'type' => 'itemshorizontal',
                        'posttype' => $posttype_slug,
                        'label' => ucfirst(Flang::_e($posttype_slug.'_trending')),
                        'button' => [ucfirst(Flang::_e('load_more')), 'linkpage', LANG, 'trending'],
                        'items' => $this->_formatPosts($posts_popular),
                    ];
                }                        
                
            }
            if(!empty($modules)) {
                foreach($modules as $module) {
                    $sections[] = Render::component('frontend/component/'. $module['type']. '-section', $module );
                }
            }
            if(!empty($sections)) { 
                $this->data('sections', $sections );
            }
            $this->render('frontend', 'frontend/page/search');
        }
    }
    public function _handle_search($paged = 1) {

            $limit = $this->limit;
            $fields = 'id, title, slug, lang_slug, status, seo_title, seo_desc, rating_total, rating_count, views_day, views, views_week, banner, feature, like_count';
            $where = '';
            $params = [];
            $orderby = [];


            $data_filter = [];
            $filter = S_GET('filter') ?? '';
            $sort = S_GET('sortby') ?? '';
            $keysearch = S_GET('q') ?? '';
            $sortbys = $this->sort_by_option;
            if(!empty($sortbys)) {
               $sortbys = is_string($sortbys) ? json_decode($sortbys, true) : $sortbys;
               foreach($sortbys as $sortby) {
                    if( $sort == $sortby['name']) {
                        $data_filter['sort'] =  $sortby['sortby'];
                        break;
                    }
               }
            }
            if(!empty($keysearch)) {
                $data_filter['keysearch'] = $keysearch;
            }

            
            if(!empty($filter)) { 
                $parts = explode('__', $filter);
                $filter_array = [];
                for ($i = 0; $i < count($parts); $i += 2) {
                    // Kiểm tra nếu còn value tương ứng
                    if (isset($parts[$i + 1])) {
                        $filter_array[$parts[$i]] = $parts[$i + 1];
                    }
                }
            }


            if(!empty($filter_array['posttype']) ) {
                if(!empty($filter_array['posttype'])) {
                    $posttype = $filter_array['posttype'];
                } else {
                    return $this->error("posttype_does_not_exist", [], 404);
                }
                if(!empty($filter_array['catid'])) {
                    $data_filter['catid'] = $filter_array['catid'];
                }

                $this->postsModel = new PostsModel($posttype, LANG);
                if (!$this->postsModel->checkPosttypeExists()) {
                    return $this->error("posttype_does_not_exist", [], 404);
                }
                $posttype_data = $this->postsModel->getPostBySlug('fast_posttype', $posttype);
                $posttype_fields = json_decode($posttype_data['fields'], true);
                        $fields_ralationship = [];
                        foreach($posttype_fields as $field) {
                            switch($posttype_data['slug']) {
                                case 'movie':
                                    if($field['field_name'] == 'directors') {$fields_ralationship[] = $field; };
                                case 'comic':
                                    if($field['field_name'] == 'creators') {$fields_ralationship[] = $field; };
                                case 'novel':
                                    if($field['field_name'] == 'creators') {$fields_ralationship[] = $field; };
                            }
                        }
                if(!empty($posttype_data) && !empty($data_filter)) { 
                    $sort_data = $this->_handle_sort($data_filter);
                }
                if(!empty($sort_data['status']) && $sort_data['status'] === 'not_found') {
                    $result = $this->get_error(Flang::_e('post_not_found'), [], 404);
                    echo json_encode($result);
                    exit();
                }
                if(!empty($sort_data['posts_data'])) {
                    $fields = '*';
                    
                    $fields = is_string($fields) ? array_map('trim', explode(',', $fields)) : $fields;
    
                    // Create a proper key => value array for comparison
                    $field_keys = array_fill_keys($fields, '');
                    
                    $posts['data'] = $sort_data['posts_data'];

                    $posts['data'] = array_map(function ($movie) use ($field_keys) {
                        return array_intersect_key($movie, $field_keys);
                    }, $posts['data']);
                } else {
                    $where = $sort_data['where'] ?? '';
                    $params = $sort_data['params'] ?? [];
                    $orderby = $sort_data['orderby'] ?? [];
                    $posts = $this->postsModel->ListsFields($fields, $where, $params, $orderby, $paged, $limit);

                    $posts['data'] = $this->_formatPosts($posts['data'], false ,$posttype_data['slug'], $fields_ralationship) ;

                }
            } else {
                $this->postsModel = new PostsModel;
                $posttype_list = $this->postsModel->getAllPosts('fast_posttype');
                $all_posts = [];
                if(!empty($posttype_list)) {
                    $is_next = false;
                    foreach($posttype_list as $posttype) {
                        $is_sortby = false;
                        if($posttype['slug'] !== $posttype['menu']) continue;
                        $posttype_fields = json_decode($posttype['fields'], true);
                        $fields_ralationship = [];
                        foreach($posttype_fields as $field) {
                            switch($posttype['slug']) {
                                case 'movie':
                                    if($field['field_name'] == 'directors') {$fields_ralationship[] = $field; };
                                case 'comic':
                                    if($field['field_name'] == 'creators') {$fields_ralationship[] = $field; };
                                case 'novel':
                                    if($field['field_name'] == 'creators') {$fields_ralationship[] = $field; };
                            }
                            if($field['field_name'] == 'like_count') {
                                
                                $is_sortby = true;
                            }
                        }
                        if(!$is_sortby) continue; 
                        $this->postsModel = new PostsModel($posttype['slug'], LANG);
                        if (!$this->postsModel->checkPosttypeExists()) {
                            return $this->error("posttype_does_not_exist", [], 404);
                        }
                        if(!empty($posttype) && !empty($data_filter)) { 
                            $sort_data = $this->_handle_sort($data_filter);
                        }
                        if(!empty($sort_data['status']) && $sort_data['status'] === 'not_found') {
                            $result = $this->get_error(Flang::_e('post_not_found'), [], 404);
                            echo json_encode($result);
                            exit();
                        }
                        if(!empty($sort_data['posts_data'])) {
                            $fields = '*';
                            
                            $fields = is_string($fields) ? array_map('trim', explode(',', $fields)) : $fields;
            
                            // Create a proper key => value array for comparison
                            $field_keys = array_fill_keys($fields, '');
                            
                            $posts['data'] = $sort_data['posts_data'];
                            $posts['data'] = array_map(function ($movie) use ($field_keys) {
                                return array_intersect_key($movie, $field_keys);
                            }, $posts['data']);
                            if(!empty($posts['data'])) $posts = $posts['data'];
                        } else {
                            $where = $sort_data['where'] ?? '';
                            $params = $sort_data['params'] ?? [];
                            $orderby = $sort_data['orderby'] ?? [];
                            $fields = '*';
                            $posts = $this->postsModel->ListsFields($fields, $where, $params, $orderby, $paged, $limit);
                            if($posts['is_next']) $is_next = true;
                            $postssub = $this->_formatPosts($posts['data'], false ,$posttype['slug'], $fields_ralationship) ;
                        }
                        if(!empty($postssub)) {
                            $all_posts = array_merge($all_posts, $postssub);
                        }
                    }
                }
                
            }

            if(!empty($all_posts)) {
                if (!empty($data_filter['sort'])) {
                    $sortKey = $data_filter['sort'][0] ?? 'id'; // Key cần sắp xếp (mặc định là 'id')
                    $sortOrder = $data_filter['sort'][1] ?? 'DESC'; // Thứ tự (mặc định là 'desc')
            
                    // Sắp xếp mảng $all_posts
                    usort($all_posts, function ($a, $b) use ($sortKey, $sortOrder) {
                        if (!isset($a[$sortKey]) || !isset($b[$sortKey])) {
                            return 0; // Không có key để so sánh
                        }
                        if (strtoupper($sortOrder) === 'DESC') {
                            return $b[$sortKey] <=> $a[$sortKey];
                        } else {
                            return $a[$sortKey] <=> $b[$sortKey];
                        }
                    });
                }
                $posts = [
                    'data' => $all_posts,
                    'is_next' => $is_next,
                    'page' => $paged
                ];
            }
            $modules = [];
            if(!empty($posts['data'])) { 
               
                $modules[] = [
                    'type' => 'postgrid',
                    'posttype' => $posttype,
                    'label' => ucfirst(Flang::_e('movie_hot')),
                    'button' => [ucfirst(Flang::_e('load_more')), 'linkpage', LANG, 'hot'],
                    'items' => $posts['data'],
                ];
                $modules[] = [
                    'type' => 'panigation',
                    'paged' => $paged,
                    'is_next' => $posts['is_next'],
                    'slug' => '/' . LANG . '/search/'
                ];
            }
            if(!empty($modules)) {
                foreach($modules as $module) {
                    $sections[] = Render::component('frontend/component/'. $module['type']. '-section', $module );
                }
            }
        
            if(!empty($sections)) { 
                $this->data('sections', $sections );
            }
            $this->render('frontend', 'frontend/page/search');
    }
    private function _formatPostTerm($terms, $limit = 4, $where = 'status = ?', $params = array('active')) {
        $formattedItems = [];
        foreach ($terms as $term) {
            if($term['type'] !== 'categories') continue;
            $postsID = $this->postsModel->getPostIdByTerm($term['posttype'], $term['id_main'],  LANG);
            $postIds = array_unique(array_column($postsID, 'post_id'));
            if(!empty($postIds)) {
                $postIdsString = implode(',', array_fill(0, count($postIds), '?')); // Tạo chuỗi ?,?,?
                $fields = "*";
                $paged = 1;
                
                // Thêm điều kiện IN vào $where có sẵn
                $where .= " AND id IN ($postIdsString)";
                // Ghép params có sẵn với mảng postIds
                $params = array_merge($params, $postIds);
                $posts_latest = $this->postsModel->ListsFields($fields, $where, $params, 'created_at DESC', $paged, $limit);
                $items = $this->_formatPosts($posts_latest['data'], false, $term['posttype']);
            } else {
                $items = [];
            }
            
            if(empty($items)) continue;
            $formattedItems[] = [
                'id' => $term['id'],
                'name' => $term['name'],
                'slug' => cat_url($term['slug'],$term['posttype'], $term['lang'] ),
                'posttype' => $term['posttype'],
                'lang' => $term['lang'],
                'type' => $term['type'],
                'items' => $items
            ];
        }
        
        return $formattedItems;
    }

    
    private function _formatPosts($posts, $termshow = false, $posttype = '',  $relationshipShow = false) {
        $formattedItems = [];
        foreach ($posts as $post) {

            if($termshow) {
                $terms = $this->postsModel->getPostTermsByPostId($posttype, $post['id'], LANG);
                $termsNew = [];
                if(!empty($terms)) { 
                    foreach ($terms as $term) {
                        unset($term['id_main']);
                        unset($term['updated_at']);
                        unset($term['created_at']);
                        $termsNew[$term['type']][] = $term;
                    }
                }
            }

            if($posttype == 'movie') {
                $postrelModel = new PostrelModel();
                $count = $postrelModel->countPosts(
                    $post['id'],      // ID của post cần đếm relationship
                    'movie',    // Loại post
                    'episode', // Loại post relationship
                    false,         // save_rel flag
                    LANG           // ngôn ngữ
                );
            }
            if($posttype == 'comic') {
                $postrelModel = new PostrelModel();
                $chapter_current = $postrelModel->countPosts(
                    $post['id'],      // ID của post cần đếm relationship
                    'comic',    // Loại post
                    'comic_chapter', // Loại post relationship
                    false,         // save_rel flag
                    LANG           // ngôn ngữ
                );
            }
            if($posttype == 'novel') {
                $postrelModel = new PostrelModel();
                $chapter_current = $postrelModel->countPosts(
                    $post['id'],      // ID của post cần đếm relationship
                    'novel',    // Loại post
                    'novel_chapter', // Loại post relationship
                    false,         // save_rel flag
                    LANG           // ngôn ngữ
                );
            }
            $postTmp = [
                'id' => $post['id'],
                'title' => $post['title'],
                'slug' => single_url($post['slug'], $posttype, LANG),
                'status' => $post['status'],
                'rating_count' => $post['rating_count'],
                'rating_total' => $post['rating_total'],
                'views' => $post['views'],
            ];
            if (!empty($post['feature'])){
                $postTmp['feature'] = json_decode($post['feature']);
                if (!empty($postTmp['feature']->path)){
                    $postTmp['feature']->path = '/uploads/'.$postTmp['feature']->path;
                    $postTmp['feature']->square = img_square($postTmp['feature']);
                    $postTmp['feature']->path = img_vertical($postTmp['feature']);
                    if (!empty($postTmp['feature']->resize)){
                        unset($postTmp['feature']->resize);
                    }
                    if (!empty($postTmp['feature']->name)){
                        unset($postTmp['feature']->name);
                    }
                }else{
                    $postTmp['feature'] = null;
                }
            }
            if (!empty($post['banner'])){
                $postTmp['banner'] = json_decode($post['banner']);
                if (!empty($postTmp['banner']->path)){
                    $postTmp['banner']->path = '/uploads/'.$postTmp['banner']->path;
                    if (!empty($postTmp['banner']->resize)){
                        unset($postTmp['banner']->resize);
                    }
                    if (!empty($postTmp['banner']->name)){
                        unset($postTmp['banner']->name);
                    }
                }else{
                    $postTmp['banner'] = null;
                }
            }
            if (!empty($post['cinema'])){
                $postTmp['cinema'] = $post['cinema'];
            }
            if (!empty($post['movie_type'])){
                $postTmp['movie_type'] = $post['movie_type'];
            }
            if (!empty($post['duration'])){
                $postTmp['duration'] = $post['duration'];
            }
            if (!empty($post['trailer'])){
                $postTmp['trailer'] = $post['trailer'];
            }
            if (!empty($post['episode_total'])){
                $postTmp['episode_total'] = $post['episode_total'];
            }
            if (!empty($post['like_count'])){
                $postTmp['like_count'] = $post['like_count'];
            }
            if (!empty($post['release_date'])){
                $postTmp['release_date'] = $post['release_date'];
            }
            if(!empty($termsNew)) {
                $postTmp['terms'] = $termsNew;
            }
            if(!empty($count)) {
                $postTmp['episode_current'] = $count;
            }
            if(!empty($chapter_current)) {
                $postTmp['episode_current'] = $chapter_current;
            }
            $formattedItems[]  = $postTmp;
        }
        return $formattedItems;
    }

    
    private function _formatButton($label, $type, $posttype , $heading, $dataTitle, $api, $sort_by = '', $paged = 1, $page_type ="lists" ) {
        $button = [];
    
        if (!empty($label)) {
            $button["label"] = Flang::_e($label);
        }
    
        if (!empty($type)) {
            $button["type"] = $type;
        }
    
        if (!empty($heading)) {
            $button["heading"] = Flang::_e($heading);
        }
    
        $data = [];
        if (!empty($dataTitle)) {
            $data["title"] = Flang::_e($dataTitle);
        }
        if (!empty($page_type)) {
            $data["type"] = $page_type;
        }
        if (!empty($posttype)) {
            $data["posttype"] = $posttype;
        }
        if (!empty($api)) {
            $data["api"] = $api;
        }
        if (!empty($data)) {
            $button["data"] = $data;
        }
    
        if (!empty($paged)) {
            $button["paged"] = $paged;
        }
    
        if (!empty($sort_by)) {
            $button["sortby"] = $sort_by;
        }
    
        return $button;
    }
    private function _handle_sort($data_filter = []) {
        // Base conditions
        $where = "status = ?";
        $params = ['active'];
        
        // Get filter data
        $keysearch = $data_filter['keysearch'] ?? '';
        $sort = $data_filter['sort'] ?? 'created_at DESC';
        // Add search condition if keysearch is provided
        if (!empty($keysearch)) {
            $where .= " AND (title LIKE ?)";
            $params[] = "%{$keysearch}%";
        }
    
        return [
            'where' => $where,
            'params' => $params,
            'orderby' => $sort,
        ];
    }

    private function _formatTabs($tabs) {
        $formattedTabs = [];
        foreach ($tabs as $tab) {
            $formattedTabs[] = [
                'id' => $tab['id'],
                'name' => $tab['name'],
                'slug' => cat_url($tab['slug'],$tab['posttype'], $tab['lang']),
                'posttype' => $tab['posttype'],
                'lang' => $tab['lang'],
                'type' => $tab['type'],
            ];
        }
        return $formattedTabs;
    }
   
}
