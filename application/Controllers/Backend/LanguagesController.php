<?php
//# Trang này rất quan trọng, giúp tạo nhiều ngôn ngữ cho website. Nó có liên kết đặc biệt với Controller Posts
namespace App\Controllers\Backend;
use System\Core\BaseController;
use App\Models\LanguagesModel;
use System\Libraries\Session;
use System\Libraries\Render;
use System\Libraries\Assets;
use App\Libraries\Fastlang as Flang;
use System\Libraries\Validate;




class LanguagesController extends BaseController {
    protected $languagesModel;
    protected $assets;


    public function __construct()
    {
        load_helpers(['backend']);
        $this->languagesModel = new LanguagesModel();

        $this->assets = new Assets();
        $this->assets->add('css', 'css/style.css', 'head');
        $this->assets->add('js', 'js/jfast.1.1.4.js', 'footer');
        $this->assets->add('js', 'js/feather.min.js', 'footer');
        $this->assets->add('js', 'js/main.js', 'footer');
        $this->assets->add('js', 'js/language.js', 'footer');

        $sidebar = Render::component('backend/component/main_sidebar');
        $header = Render::component('backend/component/header');
        $footer = Render::component('backend/component/footer');
        $this->data('header', $header);
        $this->data('footer', $footer);
        $this->data('sidebar', $sidebar);
        Flang::load('Languages', LANG);

    }

    // Liệt kê danh sách ngôn ngữ
    public function index()
    {
        $languages = $this->languagesModel->getLanguages();
        $this->data('languages', $languages);
        $this->data('title', Flang::_e('tile_languages'));
        $this->data('assets_header', $this->assets->header('backend'));
        $this->data('assets_footer', $this->assets->footer('backend'));

        $this->data('csrf_token', Session::csrf_token()); //token security

        $this->render('backend', 'backend/languages/index');
    }
    // Thêm ngôn ngữ mới
    public function add()
     {   
        // Validate form add new language
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $csrf_token = S_POST('csrf_token') ?? '';
            $name = S_POST('name') ?? '';
            $code = S_POST('code') ?? '';
            $status = S_POST('status') ?? 'inactive';
            $default = S_POST('is_default') ?? 0;

            // check CSRF token
            if (!Session::csrf_verify($csrf_token)){
                Session::flash('error', Flang::_e('csrf_failed') );
                redirect(admin_url('languages'));
            }

            $data = [
                'name' => $name,
                'code' => strtolower($code),
                'status' => $status,
                'is_default' => $default,
            ];
            
            $rules = [
               'name' =>  [
                    'rules' => [Validate::length(3, 80)],
                    'messages' => [Flang::_e('length_error', 3, 80)]
               ],
               'code' => [
                    'rules' => [Validate::alpha(), Validate::lowercase() ,Validate::length(2, 2)],
                    'messages' => [Flang::_e('notalpha'), Flang::_e('lowercase_error'), Flang::_e('length_error', 2, 2)]
               ],
                'is_default' => [
                    'rules' => [Validate::in([0, 1])],
                    'messages' => [Flang::_e('in_error')]
                ],
                'status' => [
                    'rules' => [Validate::in(['active', 'inactive'])],
                    'messages' => [Flang::_e('in_error')]
                ]
            ];
            $validator = new Validate();
            if(!$validator->check($data, $rules)){
                $errors = $validator->getErrors();
                foreach ($errors as $field => $messagesArray) {
                    foreach ($messagesArray as $message) {
                        $messages[] = ucfirst($field) . ": " . $message;
                    }
                }
                $errorMessage = implode("<br>", $messages); 
                Session::flash('error', $errorMessage);
            } else {
                if ($this->languagesModel->getLanguageByCode($code)){
                    Session::flash('error', Flang::_e('languages_exists') );
                }else{
                    $result = $this->languagesModel->addLanguage($data);
                    if (!isset($result['success']) || !isset($result['id'])) {
                        Session::flash('error', Flang::_e($result['message']) );
                    } else {
                        Session::flash('success', Flang::_e('add_success') );
                        if ($default) {
                            $this->_setdefault($result['id']);
                        }
                        $this->_init_config();
                    }
                }
            }
        }
        redirect(admin_url('languages'));
    }

    // Chỉnh sửa ngôn ngữ
    public function edit($id)
    {
        $language = $this->languagesModel->getLanguageById($id);

        if (!$language) {
            Session::flash('error', Flang::_e('not_exits'));
            redirect(admin_url('languages'));
        }

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $csrf_token = S_POST('csrf_token') ?? '';
            $name = S_POST('name') ?? '';
            $code = S_POST('code') ?? '';
            $status = S_POST('status') ?? 'inactive';
            $default = S_POST('is_default') ?? 0;

            $data = [
                'name' => $name,
                'code' => strtolower($code),
                'status' => $status,
                'is_default' => $default,
            ];

            // check CSRF token
            if (!Session::csrf_verify($csrf_token)){
                Session::flash('error', Flang::_e('csrf_failed') );
                redirect(admin_url('languages'));
            }

            $rules = [
               'name' =>  [
                    'rules' => [Validate::length(3, 80)],
                    'messages' => [Flang::_e('length_error', 3, 80)]
               ],
               'code' => [
                    'rules' => [Validate::alpha(), Validate::lowercase() ,Validate::length(2, 2)],
                    'messages' => [Flang::_e('notalpha'), Flang::_e('lowercase_error'), Flang::_e('length_error', 2, 2)]
               ],
                'is_default' => [
                    'rules' => [Validate::in([0, 1])],
                    'messages' => [Flang::_e('in_error')]
                ],
                'status' => [
                    'rules' => [Validate::in(['active', 'inactive'])],
                    'messages' => [Flang::_e('in_error')]
                ]
            ];
            $validator = new Validate();
            if(!$validator->check($data, $rules)){
                $errors = $validator->getErrors();
                foreach ($errors as $field => $messagesArray) {
                    foreach ($messagesArray as $message) {
                        $messages[] = ucfirst($field) . ": " . $message;
                    }
                }
                $errorMessage = implode("<br>", $messages); 
                Session::flash('error', $errorMessage);
            } else {
                $result = $this->languagesModel->setLanguage($id, $data);
                if (!isset($result['success'])) {
                    Session::flash('error', Flang::_e($result['message']) );
                } else {
                    Session::flash('success', Flang::_e('update_success') );
                    if ($default) {
                        $this->_setdefault($id);
                    }
                    $this->_init_config();
                }
            }
            redirect(admin_url('languages/edit/' . $id));
        }

            
        $this->data('csrf_token', Session::csrf_token()); //token security
        $this->data('language', $language);
        $this->data('assets_header', $this->assets->header('backend'));
        $this->data('assets_footer', $this->assets->footer('backend'));
        $this->data('title', Flang::_e('edit_language') . ' ' . $language['name']);
        $this->render('backend', 'backend/languages/edit');
    }

    // Xóa ngôn ngữ
    public function delete($id)
    {
        $language = $this->languagesModel->getLanguageById($id);

        if (!$language) {
            Session::flash('error', Flang::_e('exits'));
            redirect(admin_url('languages'));
        }

        // Không cho phép xóa ngôn ngữ mặc định
        if ($language['is_default'] == 1) {
            Session::flash('error', Flang::_e('not_del_defaute'));
            redirect(admin_url('languages'));
        }

        $this->languagesModel->del($this->languagesModel->_table(), 'id = ?', [$id]);
        Session::flash('success', Flang::_e('delete_success'));
        $this->_init_config();
        redirect(admin_url('languages'));
    }

    public function setdefault($id) {
        if (!$this->_setdefault($id)) {
            Session::flash('error', Flang::_e('update_failed') );
        } else {
            Session::flash('success', Flang::_e('update_success') );
            $this->_init_config();
        }
        redirect(admin_url('languages'));
    }

    public function _setdefault($id) {
        $language = $this->languagesModel->getLanguageById($id);

        if (!$language) {
            Session::flash('error', Flang::_e('exits'));
            redirect(admin_url('languages'));
        }

        $this->languagesModel->unsetDefaultLanguage();
        
        $data = [
            'is_default' => 1,
            'status' => 'active'
        ];
        $result = $this->languagesModel->setLanguage($id, $data);
        if (!isset($result['success']) || !isset($result['id'])) {
            return false;
        } else {
            return true;
        }
    }

    public function _init_config()
    {
        // Lấy danh sách ngôn ngữ từ database
        $lang_list = $this->languagesModel->getActiveLanguages();

        // Lấy danh sách mã ngôn ngữ
        $codes = array_column($lang_list, 'code');
        // Lấy ngôn ngữ mặc định
        $default_language = $this->languagesModel->getDefaultLanguage();
        $default_code = !empty($default_language['code']) ? $default_language['code'] : null;
        if (empty($default_code) || empty($lang_list)){
            return false;
        }
 
        // Tạo nội dung file config bằng cách sử dụng "heredoc" để dễ đọc và chỉnh sửa
        $config_content = <<<'EOD'
define('LANG_LIST', ['%s']);
define('LANG_DF', '%s');

$uri_path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$uri_path = preg_replace('#/+#', '/', $uri_path); // Thay thế nhiều dấu / liên tiếp bằng một dấu /
$uri_segments = explode('/', trim($uri_path, '/'));

// Kiểm tra xem segment đầu tiên có nằm trong danh sách ngôn ngữ không
if (!empty($uri_segments[0]) && in_array($uri_segments[0], LANG_LIST)) {
    define('LANG', $uri_segments[0]);
} else {
    if (!empty($_REQUEST['lang']) && in_array($_REQUEST['lang'], LANG_LIST)) {
        setcookie('fast_lang', $_REQUEST['lang'], time() + 86400 * 3650, '/');
        define('LANG', $_REQUEST['lang']);
    } elseif (!empty($_COOKIE['fast_lang']) && in_array($_COOKIE['fast_lang'], LANG_LIST)) {
        define('LANG', $_COOKIE['fast_lang']);
    }else{
        define('LANG', LANG_DF);
    }
}
unset($uri_path);
unset($uri_segments);
EOD;
 
        // Thay thế các placeholder trong heredoc
        $config_content = sprintf($config_content, implode("','", $codes), $default_code);
        // Đường dẫn lưu file config
        $config_path = ROOT_PATH . '/application/Config/Languages.php';

        // Lưu nội dung vào file
        try {
            file_put_contents($config_path, "<?php\n".$config_content);
            return true;
        } catch (\Exception $e) {
            return false;
        }
    }


    public function changestatus($id)
    {
        $language = $this->languagesModel->getLanguageById($id);

        if (!$language) {
            Session::flash('error', Flang::_e('exits'));
            redirect(admin_url('languages'));
        }
        if($language['is_default'] == 1) {
            Session::flash('error', Flang::_e('not_change_default'));
            redirect(admin_url('languages'));
        }
        $status = $language['status'] == 'active' ? 'inactive' : 'active';
        $data = [
            'status' => $status
        ];
        $status = $this->languagesModel->setLanguage($id, $data);

        if (!$status['success']) {
            Session::flash('error', Flang::_e($status['message']) );
        } else {
            Session::flash('success', Flang::_e('update_success') );
            $this->_init_config();
        }
        redirect(admin_url('languages'));
    }
}