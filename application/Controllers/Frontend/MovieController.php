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

class MovieController extends BaseController {
    protected $modelMovie;
    protected $modelMDirector;
    protected $assets;
    protected $cache;
    protected $termsModel;
    protected $postsModel;
    protected $postrelModel;
    protected $subpostsModel;
    protected $utilsModel;
    protected $limit;

    public function __construct()
    {
        
        $this->termsModel = new TermsModel();
        $this->utilsModel = new UtilsModel();
        $this->assets = new Assets();
        load_helpers(['images']);
        load_helpers(['frontend']);
        $this->postsModel = new PostsModel();
        $this->modelMovie = new PostsModel('movie',  LANG);
        $this->modelMDirector = new PostsModel('director',  LANG);
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

        $this->limit = option('default_limit') ?? 10; // 
    }

    public function index() {
        $posttype = 'movie';
        $fields = "*";
        $page = 1;
        $limit = $this->limit;
        $where = 'status = ?';
        $params = ['active'];
        $modules = [];
        $this->postsModel = new PostsModel($posttype, LANG);
        if (!$this->postsModel->checkPosttypeExists()) {
            return false;
            
        }
            $posts_sliders = $this->postsModel->ListsFields($fields, $where, $params, 'like_count DESC', $page, 5);
            $posts_latest = $this->postsModel->ListsFields($fields, $where, $params, 'created_at DESC', $page, $limit);
            $posts_popular = $this->postsModel->ListsFields($fields, $where, $params, 'views_day DESC', $page, $limit);
            $posts_view_top = $this->postsModel->ListsFields($fields, $where, $params, 'views DESC', $page, $limit);
            
            if(!empty($posts_sliders)) {
                $posts_sliders = $posts_sliders['data'];
            } else {
                $posts_sliders = [];
            }
            if (!empty($posts_latest['data'])){
                $posts_latest = $posts_latest['data'];
            }else{
                $posts_latest = [];
            }
            if (!empty($posts_popular['data'])){
                $posts_popular = $posts_popular['data'];
            }else{
                $posts_popular = [];
            }
            if(!empty($posts_view_top['data'])){
                $posts_view_top = $posts_view_top['data'];
            } else {
                $posts_view_top = [];
            } 
            $sliders = $this->_formatPosts($posts_sliders, false, $posttype);
            $termtype = 'categories';
            $categories = $this->termsModel->getTerms($posttype, $termtype, LANG);
              
            $modules[] = [
                'type' => 'category-list',
                'posttype' => $posttype,
                'items' => $this->_formatTabs($categories)
            ];
            $modules[] = [
                'type' => 'posttype_slider',
                'posttype' => $posttype,
                'label' => 'HOT ' . $posttype,
                'items' => $sliders
            ];
  
        
            $modules[] = [
                'type' => 'itemslider',
                'posttype' => $posttype,
                'label' => ucfirst(Flang::_e('category_favorite')),
                'button' => [ucfirst(Flang::_e('trending')), 'linkpage', LANG, 'trending'],
                'items' => $this->_formatPostTerm($categories)
            ];
            
            if(!empty($posts_latest)) {
                $modules[] = [
                    'type' => 'itemshorizontal',
                    'posttype' => $posttype,
                    'label' => ucfirst(Flang::_e('movie_new')),
                    'button' => [ucfirst(Flang::_e('load_more')), 'linkpage', LANG, 'new'],
                    'items' => $this->_formatPosts($posts_latest, false, $posttype),
                ];
            }

            if(!empty($posts_popular)) {
                $modules[] = [
                    'type' => 'itemshorizontal',
                    'posttype' => $posttype,
                    'label' => ucfirst(Flang::_e('movie_hot')),
                    'button' => [ucfirst(Flang::_e('load_more')), 'linkpage', LANG, 'hot'],
                    'items' => $this->_formatPosts($posts_popular, false, $posttype),
                ];
            }

            if(!empty($posts_view_top)) {
                $modules[] = [
                    'type' => 'itemshorizontal',
                    'posttype' => $posttype,
                    'label' => ucfirst(Flang::_e('movie_view')),
                    'button' => [ucfirst(Flang::_e('load_more')), 'linkpage', LANG, 'views'],
                    'items' => $this->_formatPosts($posts_view_top, false, $posttype),
                ];
            }


        
        foreach($modules as  $module) {
            $sections[] = Render::component('frontend/component/'. $module['type']. '-section', $module );
        }
       
        
        $header = Render::component('frontend/component/header', ['name' => 'Phim hay']);
        $this->data('header', $header);
        $this->data('sections', $sections );
        $this->render('frontend', 'frontend/page/home');
    }


    public function category($slug, $paged = 1) {
        $posttype = 'movie';
        $where = 'status = ?';
        $params = ['active'];
        $filter = $_GET['filter'] ?? '';
        $fields = "*";
        $limit = $this->limit;
        $categories = $this->termsModel->getTerms($posttype, 'categories', LANG);
        $current_category = [];
        if(!empty($categories)) {
            foreach($categories as $category) {
                if($category['slug'] == $slug) {
                    $current_category = $category;
                    break;
                }
            }
        }
        $this->postsModel = new PostsModel($posttype, LANG);
        $postIds = $this->postsModel->getPostIdByTerm($posttype, $current_category['id_main'], LANG);
        $postIds = array_unique(array_column($postIds, 'post_id'));
        if(!empty($postIds)) {
            $postIdsString = implode(',', array_fill(0, count($postIds), '?')); // Tạo chuỗi ?,?,?
            
            // Thêm điều kiện IN vào $where có sẵn
            $where .= " AND id IN ($postIdsString)";
            // Ghép params có sẵn với mảng postIds
            $params = array_merge($params, $postIds);
            $posts_cat = $this->postsModel->ListsFields($fields, $where, $params, 'created_at DESC', $paged, $limit);
            $posts_cat['data'] = $this->_formatPosts($posts_cat['data'], false , $posttype);
        } else {
            $posts_cat = [
                'data' => [],
                'is_next' => false
            ];
        }
        $modules[] = [
            'type' => 'category-list',
            'current_category' => true,
            'posttype' => $posttype,
            'items' => $this->_formatTabs($categories, $slug)
        ];
        $modules[] = [
                'type' => 'postgrid',
                'posttype' => $posttype,
                'label' => ucfirst(Flang::_e('movie_hot')),
                'button' => [ucfirst(Flang::_e('load_more')), 'linkpage', LANG, 'hot'],
                'items' => $posts_cat['data'],
        ];
        $modules[] = [
            'type' => 'panigation',
            'paged' => $paged,
            'is_next' => $posts_cat['is_next'],
            'slug' => cat_url($current_category['slug'] ,$posttype, LANG)
        ];
        if(!empty($modules)) {
            foreach($modules as $module) {
                $sections[] = Render::component('frontend/component/'. $module['type']. '-section', $module );
            }
        }
        
        
        $this->data('sections', $sections );
        $header = Render::component('frontend/component/header', $current_category);
        $this->data('header', $header);
        $this->render('frontend', 'frontend/page/home');
    }

    public function page($slug, $paged = 1) {
        
        $posttype = 'movie';
        $fields = 'id, title, slug, lang_slug, status, seo_title, seo_desc, rating_total, rating_count, views_day, views, views_week, banner, feature, like_count, cinema';
        $limit = $this->limit;
        $where = '';
        $params = [];
        $orderby = 'created_at DESC';
        if($slug === 'single') {
            $where = 'movie_type = ?';
            $params = ['movie'];
        } elseif ($slug === 'series') {
            $where = 'movie_type = ?';
            $params = ['series'];
        } else {
            $sortbys = option('movie_sortby');
            $sortbys = is_string($sortbys) ? json_decode($sortbys,true) : $sortbys;
            if (is_array($sortbys) && !empty($sortbys)) {
                foreach ($sortbys as $sortby) {
                    if ($sortby['name'] == $slug) {
                        $orderby = $sortby['sortby'];
                    }
            }
            }
            if(!empty($sortbys)) {
                echo 'post_not_found';
                return false;
            }
        }
        
        $modules = [];
        $posts = $this->modelMovie->ListsFields($fields,  $where, $params, $orderby, $paged, $limit);
        if(!empty($posts['data'])) { 
            $posts['data'] = $this->_formatPosts($posts['data'], false, $posttype);
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
                'slug' => page_url($slug ,$posttype, LANG)
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
        $header = Render::component('frontend/component/header', ['name' => Flang::_e($slug)]);
        $this->data('header', $header);
        $this->render('frontend', 'frontend/page/home');
        
    }

    public function detail($slug) {
        $cachedata = $this->cache->get();
        if (!empty($cachedata)) {
            $this->cache->headers();
            echo $cachedata;
            exit();
        } else {

        
            $posttype_slug ='movie';
            $lang = LANG;
            $posttype = $this->postsModel->getPostBySlug('fast_posttype', $posttype_slug);
            if (!empty($posttype) || !empty($posttype['fields'])){
                $posttype_fields = json_decode($posttype['fields']);
            }else{
                return $this->error(Flang::_e('posttype_404'), ["posttype"=>["posttype_404"]], 404);
            }
            $postrelModel = new PostrelModel();
            $detail = $this->modelMovie->getBySlug($slug);
            if(empty($detail)) {
                echo 'post not found';
                return false;
            }
            $post_terms = $this->postsModel->getPostTermsByPostId($posttype_slug, $detail['id'], $lang);
            foreach ($post_terms as $term){
                if (empty($detail[$term['type']])){
                    $detail[$term['type']] = array();
                }
                $detail[$term['type']][] = [
                    'id' => $term['id'],
                    'name' => $term['name'],
                    'slug' => $term['slug'],
                    'posttype' => $term['posttype'],
                    'id_main' => $term['id_main'],
                ];
            }
            $main_term_type = 'categories';
            $main_terms =  $detail[$main_term_type];
            if(!empty($main_terms)) {
                $post_ids = array();
                foreach($main_terms as $main_term) {
                    $ids = $this->postsModel->getPostIdByTerm($posttype_slug, $main_term['id_main'], LANG);
                    if(empty($ids)) continue;
                    $post_ids[] = array_merge($ids);
                }
                $new_post_ids = array();
                if(!empty($post_ids)) {
                    foreach ($post_ids as $subArray) {
                        foreach ($subArray as $item) {
                            $new_post_ids[] = $item['post_id'];
                        }
                    }
                    
                    // Bước 2: Loại bỏ trùng lặp
                    $post_ids = array_unique($new_post_ids);
                    $post_ids = array_diff($post_ids, array($detail['id']));
                }
                
                if(!empty($post_ids)) {
                    $postIdsString = implode(',', array_fill(0, count($post_ids), '?'));
                    $fields = '*';
                    $page = 1;
                    $limit = $this->limit;
                    $where = 'status = ? AND id IN (' . $postIdsString . ')';
                    $params = array_merge(['active'], $post_ids);
                    $related_post = $this->modelMovie->ListsFields($fields, $where, $params, 'views DESC', $page, $limit);
                    if(!empty($related_post['data'])) {
                        $related_post = [
                            'type' => 'itemshorizontal',
                            'posttype' => $posttype_slug,
                            'label' => ucfirst(Flang::_e($posttype_slug.'_related_posts')),
                            'name' => $posttype_slug,
                            'button' => [ucfirst(Flang::_e('load_more')), 'linkpage', LANG, 'hot'],
                            'items' => $this->_formatPosts($related_post['data'], true, $posttype_slug ),
                        ];
                    }
                }
            } else {
                $related_post = [];
            }
            foreach ($posttype_fields as $field){
                if (empty($field->type)) continue;
                switch ($field->type){
                    case 'WYSIWYG':
                        $detail[$field->field_name] = json_decode($detail[$field->field_name]);
                        break;
                    case 'Image':
                        $detail[$field->field_name] = json_decode($detail[$field->field_name]);
                        break;
                }
                if(ucfirst($field->type) == 'Reference' && !empty($field->post_type_reference) && isset($field->table_save_data_reference)) {
                    $save_rel = (int)$field->table_save_data_reference == 1 ? true : false;
                    $posts = $postrelModel->getPosts($detail['id'], $posttype_slug, $field->post_type_reference, $save_rel, $lang);
                    if ($posts) {
                        $posts = array_filter($posts, function ($p) {
                            return $p['status'] !== 'inactive';
                        });
                        $detail[$field->field_name] = array_map(function ($postTmp) {
                            if(!empty($postTmp['social_media'])) {
                                $postTmp['social_media'] = json_decode($postTmp['social_media']);
                            }
                            if(!empty($postTmp['content'])) {
                                $postTmp['content'] = json_decode($postTmp['content']);
                                if(!empty($postTmp['content'])) {
                                    foreach($postTmp['content'] as $i =>  $item) {
                                        if(!empty($item->path)) {
                                            $postTmp['content'][$i]->path= '/uploads/'.$item->path;
                                        }
                                    }
                                }
                            }
                            if (!empty($postTmp['feature'])) {
                                if (!empty($postTmp['feature']->path)) {
                                    $postTmp['feature']->path   = '/uploads/'.$postTmp['feature']->path;
                                    $postTmp['feature']->square = img_square($postTmp['feature']);
                                    $postTmp['feature']->path   = img_vertical($postTmp['feature']);
                                    if (!empty($postTmp['feature']->resize)) {
                                        unset($postTmp['feature']->resize);
                                    }
                                    if (!empty($postTmp['feature']->name)) {
                                        unset($postTmp['feature']->name);
                                    }
                                } else {
                                    $postTmp['feature'] = null;
                                }
                            }
                            if(!empty($postTmp['source'])) {
                                $links = array_filter(explode("\n", $postTmp['source'])); // Tách các URL thành mảng và loại bỏ các phần tử rỗng
                                $sources = [];
                                foreach($links as $index => $link) {
                                    $server_number = $index + 1;
                                    $sources[] = [
                                        'server' => "Server {$server_number}",
                                        'link' => trim($link) // Loại bỏ khoảng trắng và ký tự xuống dòng
                                    ];
                                }
                                $postTmp['source'] = $sources;
                            }
                            if (!empty($postTmp['banner'])) {
                                if (!empty($postTmp['banner']->path)) {
                                    $postTmp['banner']->path   = '/uploads/'.$postTmp['banner']->path;
                                    $postTmp['banner']->square = img_square($postTmp['banner']);
                                    $postTmp['banner']->path   = img_vertical($postTmp['banner']);
                                    if (!empty($postTmp['banner']->resize)) {
                                        unset($postTmp['banner']->resize);
                                    }
                                    if (!empty($postTmp['banner']->name)) {
                                        unset($postTmp['banner']->name);
                                    }
                                } else {
                                    $postTmp['banner'] = null;
                                }
                            }
                            return $postTmp;
                        },$posts);
                    } else {
                        $detail[$field->field_name] = [];
                    }
                }
            }

            if(!empty($detail)) {
                $postTmp = $detail;
                if (!empty($postTmp['feature'])) {
                    if (!empty($postTmp['feature']->path)) {
                        $postTmp['feature']->path   = '/uploads/'.$postTmp['feature']->path;
                        $postTmp['feature']->square = img_square($postTmp['feature']);
                        $postTmp['feature']->path   = img_vertical($postTmp['feature']);
                        if (!empty($postTmp['feature']->resize)) {
                            unset($postTmp['feature']->resize);
                        }
                        if (!empty($postTmp['feature']->name)) {
                            unset($postTmp['feature']->name);
                        }
                    } else {
                        $postTmp['feature'] = null;
                    }
                }
                if (!empty($postTmp['banner'])) {
                    if (!empty($postTmp['banner']->path)) {
                        $postTmp['banner']->path   = '/uploads/'.$postTmp['banner']->path;
                        $postTmp['banner']->square = img_square($postTmp['banner']);
                        $postTmp['banner']->path   = img_vertical($postTmp['banner']);
                        if (!empty($postTmp['banner']->resize)) {
                            unset($postTmp['banner']->resize);
                        }
                        if (!empty($postTmp['banner']->name)) {
                            unset($postTmp['banner']->name);
                        }
                    } else {
                        $postTmp['banner'] = null;
                    }
                }
                if(!empty($related_post)) {
                    $postTmp['related_post'] = $related_post;
                }
            
                $detail = $postTmp;
            }
            $modules =  [];
            $data_banner = [
                'banner' => $detail['banner']->path, // URL của banner phim
                'title' => $detail['title'], // Tên phim
                'trailer' => $detail['trailer'], // URL của trailer
                'duration' => $detail['duration'], // Thời lượng phim (phút)
                'like_count' => $detail['like_count'], // Số lượt thích
                'rating' => $detail['rating_count'] > 0 
                    ? number_format($detail['rating_total'] / $detail['rating_count'], 1) . '/10'
                    : 'Chưa có đánh giá', // Điểm đánh giá trung bình
            ];
            if($detail['movie_type'] == 'movie') {
                $this->assets->add('js', 'artplayer.js', 'footer');
                $this->data('assets_footer', $this->assets->footer('frontend'));
                $data_banner['single_movie'] = true;
                $data_banner['chapters'] = $detail['chapters'][0];
            } else {
                $data_banner['single_movie'] = false;
                $data_banner['url_chapter'] =chapter_url($detail['slug'], 1, $posttype_slug, $lang);
            }
            $modules[] = [
                'type' =>'banner-detail',
                'data' => $data_banner
            ];

            $modules[] = [
                'type' =>'action',
            ];
            $chapters = [];
            
            if(!empty($detail['chapters'])) {
                foreach($detail['chapters'] as $chapter) {
                    $chapters[] = [
                        'index' => $chapter['index'],
                        'name' => 'Tập ' . $chapter['index'],
                        'url' => chapter_url($detail['slug'], $chapter['index'], $posttype_slug, $lang),
                    ];
                }
            }
            if($detail['movie_type'] != 'movie') {
                $modules[] = [
                    'type' =>'chapter-list',
                    'data' => $chapters
                ];
            }
            $modules[] = [
                'type' =>'content-detail',
                'data' => [
                    'release_date' => $detail['release_date'], 
                    'tags' => array_map(function($tag) use ($posttype_slug, $lang) {
                        return [
                            'name' => $tag['name'],
                            'url' => cat_url($tag['slug'], $posttype_slug, $lang),
                        ];
                    }, $detail['categories']), // Lấy từ 'tags' 
                    'director' => isset($detail['directors'][0]['title']) ? $detail['directors'][0]['title'] : 'N/A', // Ví dụ: 'Quentin Tarantino'
                    'actors' => array_map(function($actor) {
                        return $actor['title'];
                    }, $detail['actors']), 
                    'description' => [
                        'full' => $detail['description'],
                        'short' => mb_substr($detail['description'], 0, 100, 'UTF-8') . '...',
                    ],
                ]
            ];

            if(!empty($detail['related_post'])) {
                $modules[] = $detail['related_post'];
            }
            foreach($modules as  $module) {
                $sections[] = Render::component('frontend/component/'. $module['type']. '-section', $module );
            }
            $header = Render::component('frontend/component/header', ['name' => $detail['title']]);
            $this->data('header', $header);
            $this->data('sections', $sections );
            $result = $this->render('frontend', 'frontend/page/home', true);
            $this->cache->set($result);
            echo $result;
            
        }
        $this->cache->headers(0);
    }

    public function chapter($slug = '', $chapetr_number = '') {
        $posttype_slug = 'movie';
        $lang = LANG;
        $chapetr_number = explode('-', $chapetr_number);
        if(isset( $chapetr_number[0]) && isset( $chapetr_number[1]) &&  $chapetr_number[0] == 'tap' && is_numeric( $chapetr_number[1])) {
            $index = $chapetr_number[1];
        } else {
            echo 'url not found';
            return false;
        };
        $detail = $this->modelMovie->getBySlug($slug);
        if(empty($detail)) {
            echo 'url not found';
            return false;
        }
        if($detail['movie_type'] === 'movie') {
            echo 'url not found';
            return false;
        }
        $this->postrelModel = new PostrelModel;
        $chapter_detail = $this->postrelModel->getChapter($posttype_slug, $detail['id'], $index, $lang);
        $list_chapter = $this->postrelModel->getListChapter($posttype_slug, $detail['id'], $lang);
        if(!empty($list_chapter)) {
            foreach($list_chapter as $i => $chapter) {
                $list_chapter[$i]['slug'] = chapter_url($detail['slug'], $chapter['index'], $posttype_slug, $lang); 
                $list_chapter[$i]['current'] = false;
                if($chapter['index'] == $index) { 
                    $chapter_detail = $chapter;
                    $list_chapter[$i]['current'] = true;
                }
            }
            $chapter_detail['list_chapter'] = $list_chapter;
        }
        if(empty($chapter_detail)) {
            echo 'url not found';
            return false;
        }
        
        $modules = [];
       if(!empty($chapter_detail['source'])) {
            $links = array_filter(explode("\n", $chapter_detail['source']));
            $sources = [];
            foreach($links as $index => $link) {
                $server_number = $index + 1;
                $sources[] = [
                    'server' => "Server {$server_number}",
                    'link' => trim($link) // Loại bỏ khoảng trắng và ký tự xuống dòng
                ];
            }
            $chapter_detail['source'] = $sources;
       }
        $modules[] = [
            'type' =>'stream',
            'data' => $chapter_detail,
        ];
        
        foreach($modules as  $module) {
            $sections[] = Render::component('frontend/component/'. $module['type']. '-section', $module );
        }
        $header = Render::component('frontend/component/header', ['name' => $detail['title']]);
        $this->data('header', $header);
        $this->data('sections', $sections );
        $this->assets->add('js', 'artplayer.js', 'footer');
        $this->data('assets_footer', $this->assets->footer('frontend'));
        $this->render('frontend', 'frontend/page/home');
        
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
                $page = 1;
                
                // Thêm điều kiện IN vào $where có sẵn
                $where .= " AND id IN ($postIdsString)";
                // Ghép params có sẵn với mảng postIds
                $params = array_merge($params, $postIds);
                $posts_latest = $this->postsModel->ListsFields($fields, $where, $params, 'created_at DESC', $page, $limit);
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
    private function _formatTabs($tabs, $cat_slug = '') {
        $formattedTabs = [];
        foreach ($tabs as $tab) {
            if(!empty($cat_slug) && $cat_slug === $tab['slug']) {
                $is_active = true;
            } else { 
                $is_active  = false;
            }
            $formattedTabs[] = [
                'id' => $tab['id'],
                'name' => $tab['name'],
                'slug' => cat_url($tab['slug'],$tab['posttype'], $tab['lang']),
                'posttype' => $tab['posttype'],
                'lang' => $tab['lang'],
                'type' => $tab['type'],
                'is_active' => $is_active
            ];
            
        }
        return $formattedTabs;
    }
}
