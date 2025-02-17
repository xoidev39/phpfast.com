<?php
namespace App\Controllers\Backend;

use System\Core\BaseController;
use App\Models\UsersModel;
use System\Libraries\Session;
use System\Libraries\Render;
use System\Libraries\Security;
use App\Libraries\Fastmail;
use App\Libraries\Fastlang as Flang;
use System\Libraries\Assets;
use System\Libraries\Validate;

class UsersController extends BaseController {

    protected $usersModel;
    protected $mailer;  
    protected $assets;

    public function __construct()
    {
        load_helpers(['backend']);
        $this->usersModel = new UsersModel();
        $this->assets = new Assets();
        Flang::load('users', LANG);

        $this->assets->add('css', 'css/style.css', 'head');
        $this->assets->add('js', 'js/jfast.1.1.4.js', 'footer');
        $this->assets->add('js', 'js/feather.min.js', 'footer');
        $this->assets->add('js', 'js/main.js', 'footer');
        //$this->assets->inline('js', 'feather.replace();', 'footer');
        $sidebar = Render::component('backend/component/main_sidebar');
        $header = Render::component('backend/component/header');
        $footer = Render::component('backend/component/footer');
        $this->data('assets_header', $this->assets->header('backend'));
        $this->data('assets_footer', $this->assets->footer('backend'));
        $this->data('sidebar', $sidebar);
        $this->data('header', $header);
        $this->data('footer', $footer);
    }

    public function profile(){
        die;
    }

    public function index() {
        $this->assets->inline('css', '.main-nav ul li a{border-radius: 0px;}
            .sidebar li > ul{
                max-height: 0px; transition: max-height 0.3s ease-in-out;
            }
            .sidebar li.active > ul{
                max-height: 0px; transition: max-height 0.3s ease-in-out;
            }
            .sidebar li.active > ul{
                padding-bottom:10px;
                max-height: inherit;
            }
            .sidebar li > ul li{
                border-radius: 0px;
                margin:0px;
                padding-left: 20px;
            }
            .sidebar li > ul li.active{
                background-color: rgb(26 86 219 / var(--tw-bg-opacity));
            }
            .sidebar li > ul li.active a, .sidebar li > ul li.active span, .sidebar li > ul li.active i{
                color: #FFF !important;
            }','head');

        $page = S_GET('page') > 1 ? S_GET('page') : 1;
        $limit = S_GET('limit') >= 1 ? S_GET('limit') : 10;
        $users = [];
        $sortby = S_GET('sortby') ?? '';
        $role = S_GET('role') ?? '';
        $sortby = explode(":", $sortby);
        $order = !empty($sortby[1]) && strtoupper($sortby[1]) == 'ASC' ? 'ASC' : 'DESC';
        $sortby = $sortby[0];
    
        $orderBy = 'id DESC';
        if (!empty($sortby)) {
            switch ($sortby) {
                case 'username':
                    $orderBy = 'username ' . $order;
                    break;
                case 'fullname':
                    $orderBy = 'fullname ' . $order;
                    break;
                case 'email':
                    $orderBy = 'email ' . $order;
                    break;
                case 'phone':
                    $orderBy = 'phone ' . $order;
                    break;
                case 'role':
                    $orderBy = 'role ' . $order;
                    break;
                    case 'role':
                        $orderBy = 'role ' . $order;;
                        break;
                default:
                    $orderBy = 'id DESC';
                    break;
            }
        }
    
        $where = '';
        $params = [];
    
        // Điều kiện tìm kiếm
        if (HAS_GET('q') && S_GET('q') != '') {
            $query_value = S_GET('q');
            $where = 'username LIKE ? OR email LIKE ? OR phone LIKE ?';
            $params = [
                '%' . $query_value . '%',
                '%' . $query_value . '%',
                '%' . $query_value . '%'
            ];
            $conditions = [
                'username' => $query_value,
                'email' => $query_value,
                'phone' => $query_value,
            ];
            $users = $this->usersModel->searchUser($conditions);
            if (empty($users)) {
                $this->data('error', Flang::_e('not_find_user'));
            }
        }
    
        if (!empty($role)) {
            if (!empty($where)) {
                $where .= ' AND role = ?';
            } else {
                $where = 'role = ?';
            }
            $params[] = $role;
        }
    
        $users = $this->usersModel->getUsersPage($where, $params, $orderBy, $page, $limit);
    
        // Đặt các dữ liệu cần thiết cho view
        $this->data('page', $page);
        $this->data('limit', $limit);
        $this->data('users', $users);
        $this->data('title', Flang::_e('welcome_user_member'));
        // $this->assets->add('js', 'js/users.js', 'footer');
        $this->render('backend', 'backend/users/index');
    }

    //index, add, edit, delete, update
    public function add() {
        $this->assets->inline('css', '.main-nav ul li a{border-radius: 0px;}
            .sidebar li > ul{
                max-height: 0px; transition: max-height 0.3s ease-in-out;
            }
            .sidebar li.active > ul{
                max-height: 0px; transition: max-height 0.3s ease-in-out;
            }
            .sidebar li.active > ul{
                padding-bottom:10px;
                max-height: inherit;
            }
            .sidebar li > ul li{
                border-radius: 0px;
                margin:0px;
                padding-left: 20px;
            }
            .sidebar li > ul li.active{
                background-color: rgb(26 86 219 / var(--tw-bg-opacity));
            }
            .sidebar li > ul li.active a, .sidebar li > ul li.active span, .sidebar li > ul li.active i{
                color: #FFF !important;
            }','head');

        if (HAS_POST('username')){
            $csrf_token = S_POST('csrf_token') ?? '';
            if (!Session::csrf_verify($csrf_token)){
                $this->data('error', Flang::_e('csrf_failed'));
            }

            $permissions = S_POST('permissions') ?? [];
            if (!is_array($permissions)) {
                $permissions = [];
            }
            if (S_POST('role') == 'member'){
                if (!empty($permissions)){
                    foreach ($permissions as $key => $item){
                        if (strpos($key, 'Backend\\') !== FALSE){
                            unset($permissions[$key]);
                        }
                    }
                }
            }

            $input = [
                'username' => S_POST('username') ?? '',
                'fullname' => S_POST('fullname') ?? '',
                'email' => S_POST('email') ?? '',
                'phone' => S_POST('phone') ?? '',
                'password' => S_POST('password') ?? '',
                'password_repeat' => S_POST('password_repeat'),
                'role' => S_POST('role') ?? '',
                'permissions' => json_encode($permissions),
                'status' => S_POST('status') ?? '',
            ];
            $rules = [
                'username' => [
                    'rules' => [
                        Validate::alnum('_'),
                        Validate::length(6, 30)
                    ],
                    'messages' => [
                        Flang::_e('username_invalid'),
                        Flang::_e('username_length', 6, 30)
                    ]
                ],
                'fullname' => [
                    'rules' => [
                        Validate::length(6, 30)
                    ],
                    'messages' => [
                        Flang::_e('fullname_length', 6, 50)
                    ]
                ],
                'email' => [
                    'rules' => [
                        Validate::email(),
                        Validate::length(6, 150)
                    ],
                    'messages' => [
                        Flang::_e('email_invalid'),
                        Flang::_e('email_length', 6, 150)
                    ]
                ],
                'phone' => [
                    'rules' => [
                        Validate::phone(),
                        Validate::length(6, 30)
                    ],
                    'messages' => [
                        Flang::_e('phone_invalid'),
                        Flang::_e('phone_length', 6, 30)
                    ]
                ],
                'password' => [
                    'rules' => [
                        Validate::length(6, 60),
                    ],
                    'messages' => [
                        Flang::_e('password_length', 6, 60),
                    ]
                ],
                'password_repeat' => [
                    'rules' => [
                        Validate::equals($input['password'])
                    ],
                    'messages' => [
                        Flang::_e('password_repeat_invalid', $input['password_repeat'])
                    ]
                ],
                'role' => [
                    'rules' => [
                        Validate::notEmpty(),
                    ],
                    'messages' => [
                        Flang::_e('role_option'),
                    ]
                ],
                'permissions' => [
                    'rules' => [
                        Validate::notEmpty(),
                    ],
                    'messages' => [
                        Flang::_e('permission_array_json'),
                    ]
                ],
                'status' => [
                    'rules' => [
                        Validate::notEmpty(),
                    ],
                    'messages' => [
                        Flang::_e('status_option'),
                    ]
                ]

            ];
            $validator = new Validate();
            if (!$validator->check($input, $rules)) {
                // Lấy các lỗi và hiển thị
                $errors = $validator->getErrors();
                $this->data('errors', $errors);     
            }else{
                $errors = [];
                if ($this->usersModel->getUserByUsername($input['username'])) {
                    $errors['username'] = array(
                        Flang::_e('username_double', $input['username'])
                    );
                    $isExists = true;
                }
                if ($this->usersModel->getUserByEmail($input['email'])) {
                    $errors['email'] = array(
                        Flang::_e('email_double', $input['email'])
                    );
                    $isExists = true;
                }
                if (empty($isExists) && empty($errors)){
                    $input['password'] = Security::hashPassword($input['password']);
                    //xu ly them 1 so field social
                    
                    $input['created_at'] = DateTime();
                    $input['updated_at'] = DateTime();
                    return $this->_add($input);
                } else {
                    $this->data('errors', $errors);
                }
            }
        }
        //render khi ko co request POST, or bi errors show ra.
        $admin = config('admin', 'Roles');
        $moderator = config('moderator', 'Roles');
        $author = config('author', 'Roles');
        $member = config('member', 'Roles');

        $roles = [
            'admin' => $admin,
            'moderator' => $moderator,
            'author' => $author,
            'member' => $member
        ];

        $status = ['active', 'inactive', 'banned'];
        $this->data('roles', $roles);
        $this->data('status', $status);
        $this->data('title', Flang::_e('title_add_member'));
        $this->data('csrf_token', Session::csrf_token(600)); 

        $this->data('assets_header', $this->assets->header('backend'));
        $this->data('assets_footer', $this->assets->footer('backend'));
        $this->render('backend', 'backend/users/add');
    }


    private function _add($input)
    {
        if ($input['status'] !== 'active') {
            $activationNo = strtoupper(random_string(6)); // Tạo mã gồm 6 ký tự
            $activationCode = strtolower(random_string(20)); // Tạo mã gồm 20 ký tự
            $optionalData = [
                'activation_no' => $activationNo,
                'activation_code' => $activationCode,
                'activation_expires' => time() + 86400,
            ];
            $input['optional'] = json_encode($optionalData);
        } else {
            $input['optional'] = null;
        }
        $user_id = $this->usersModel->addUser($input);
        if ($user_id) {
            // Nếu status không phải là 'active' thì gửi email kích hoạt
            if ($input['status'] !== 'active') {
                $activationLink = auth_url('activation/' . $user_id . '/' . $activationCode . '/');
                $this->mailer = new Fastmail();
                $this->mailer->send($input['email'], Flang::_e('active_account'), 'activation', ['username' => $input['username'], 'activation_link' => $activationLink]);
            }
            Session::flash('success', Flang::_e('create_member_success'));
            redirect(admin_url('users/add'));
        } else {
            Session::flash('error', Flang::_e('register_error'));
            redirect(auth_url('dashboard'));
        }
    }

    public function edit($user_id) {
        // Check if the user exists
        $user = $this->usersModel->getUserById($user_id);
        if (!$user) {
            // User not found, redirect or show an error message
            Session::flash('error', Flang::_e('user_not_found'));
            redirect(admin_url('users/index'));
        }
    
        if (!empty($_POST)) {
            $csrf_token = S_POST('csrf_token') ?? '';
            if (!Session::csrf_verify($csrf_token)) {
                $this->data('error', Flang::_e('csrf_failed'));
            }
    
            // Initialize an empty array for rules
            $rules = [];
            $input = [];
    
            // Check each field and add the validation rules accordingly
            if (HAS_POST('username')) {
                $input['username'] = S_POST('username') ?? '';
                $rules['username'] = [
                    'rules' => [
                        Validate::alnum('_'),
                        Validate::length(6, 30)
                    ],
                    'messages' => [
                        Flang::_e('username_invalid'),
                        Flang::_e('username_length', 6, 30)
                    ]
                ];
            }
            if (HAS_POST('fullname')) {
                $input['fullname'] = S_POST('fullname') ?? '';
                $rules['fullname'] = [
                    'rules' => [
                        Validate::length(6, 50)
                    ],
                    'messages' => [
                        Flang::_e('fullname_length', 6, 50)
                    ]
                ];
            }
            if (HAS_POST('email')) {
                $input['email'] = S_POST('email') ?? '';
                $rules['email'] = [
                    'rules' => [
                        Validate::email(),
                        Validate::length(6, 150)
                    ],
                    'messages' => [
                        Flang::_e('email_invalid'),
                        Flang::_e('email_length', 6, 150)
                    ]
                ];
            }
            if (HAS_POST('phone')) {
                $input['phone'] = S_POST('phone') ?? '';
                $rules['phone'] = [
                    'rules' => [
                        Validate::phone(),
                        Validate::length(6, 30)
                    ],
                    'messages' => [
                        Flang::_e('phone_invalid'),
                        Flang::_e('phone_length', 6, 30)
                    ]
                ];
            }
            if (HAS_POST('role')) {
                $input['role'] = S_POST('role') ?? '';
                $rules['role'] = [
                    'rules' => [
                        Validate::notEmpty(),
                    ],
                    'messages' => [
                        Flang::_e('role_option'),
                    ]
                ];
            }
            if (HAS_POST('permissions')) {
                $permissions = S_POST('permissions') ?? [];
                if (!is_array($permissions)) {
                    $permissions = [];
                }
                if (S_POST('role') == 'member'){
                    if (!empty($permissions)){
                        foreach ($permissions as $key => $item){
                            //if (strpos($key, 'Backend\\') !== FALSE){
                            //    unset($permissions[$key]);
                            //}
                        }
                    }
                }
                $input['permissions'] = json_encode($permissions);
                $rules['permissions'] = [
                    'rules' => [
                        Validate::notEmpty(),
                    ],
                    'messages' => [
                        Flang::_e('permission_array_json'),
                    ]
                ];
            }
            if (HAS_POST('status')) {
                $input['status'] = S_POST('status') ?? '';
                $rules['status'] = [
                    'rules' => [
                        Validate::notEmpty(),
                    ],
                    'messages' => [
                        Flang::_e('status_option'),
                    ]
                ];
            }

            $validator = new Validate();
            if (!$validator->check($input, $rules)) {
                // Get errors and display
                $errors = $validator->getErrors();
                $this->data('errors', $errors);
                $this->data('error', Flang::_e('validate_error'));
            } else {
                $errors = [];
                // Check for duplicate username or email
                if (isset($input['username'])) {
                    $existingUser = $this->usersModel->getUserByUsername($input['username']);
                    if ($existingUser && $existingUser['id'] != $user_id) {
                        $errors['username'] = [Flang::_e('username_double', $input['username'])];
                    }
                }
    
                if (isset($input['email'])) {
                    $existingEmailUser = $this->usersModel->getUserByEmail($input['email']);
                    if ($existingEmailUser && $existingEmailUser['id'] != $user_id) {
                        $errors['email'] = [Flang::_e('email_double', $input['email'])];
                    }
                }
                if (empty($errors)) {
                    // Update user data
                    $input['updated_at'] = DateTime();
                    $this->_edit($user_id, $input);
    
                    // Set success message and retrieve updated user data
                    $this->data('success', Flang::_e('update_member_success'));
                    $user = $this->usersModel->getUserById($user_id); // Retrieve updated user
                } else {
                    $this->data('errors', $errors);
                }
            }
        }
    
        // Preload roles and status for the form
        $roles = [
            'admin' => config('admin', 'Roles'),
            'moderator' => config('moderator', 'Roles'),
            'author' => config('author', 'Roles'),
            'member' => config('member', 'Roles')
        ];
        $status = ['active', 'inactive', 'banned'];
    
        $this->assets->inline('css', '.main-nav ul li a{border-radius: 0px;}
            .sidebar li > ul{
                max-height: 0px; transition: max-height 0.3s ease-in-out;
            }
            .sidebar li.active > ul{
                max-height: 0px; transition: max-height 0.3s ease-in-out;
            }
            .sidebar li.active > ul{
                padding-bottom:10px;
                max-height: inherit;
            }
            .sidebar li > ul li{
                border-radius: 0px;
                margin:0px;
                padding-left: 20px;
            }
            .sidebar li > ul li.active{
                background-color: rgb(26 86 219 / var(--tw-bg-opacity));
            }
            .sidebar li > ul li.active a, .sidebar li > ul li.active span, .sidebar li > ul li.active i{
                color: #FFF !important;
            }','head'
        );

        $this->data('roles', $roles);
        $this->data('status', $status);
        $this->data('user', $user); // Pass current user data to the view
        $this->data('title', Flang::_e('title_edit_member'));
        $this->data('csrf_token', Session::csrf_token(600));
    
        $this->data('assets_header', $this->assets->header('backend'));
        $this->data('assets_footer', $this->assets->footer('backend'));
        $this->render('backend', 'backend/users/edit');
    }
    
    private function _edit($user_id, $input) {
        $dataToUpdate = array_filter($input, function($value) {
            return $value !== '';
        }); // Remove empty values to only update filled fields
    
        if (isset($dataToUpdate['email'])){
            if (isset($dataToUpdate['status']) && $dataToUpdate['status'] !== 'active') {
                $activationNo = strtoupper(random_string(6));
                $activationCode = strtolower(random_string(20));
                $optionalData = [
                    'activation_no' => $activationNo,
                    'activation_code' => $activationCode,
                    'activation_expires' => time() + 86400,
                ];
                $dataToUpdate['optional'] = json_encode($optionalData);
            } else {
                $dataToUpdate['optional'] = null;
            }
        }
    
        $result = $this->usersModel->updateUser($user_id, $dataToUpdate);
    
        if ($result) {
            if (isset($dataToUpdate['status']) && $dataToUpdate['status'] !== 'active' && isset($dataToUpdate['email'])) {
                $activationLink = auth_url('activation/' . $user_id . '/' . $activationCode . '/');
                $this->mailer = new Fastmail();
                $this->mailer->send($dataToUpdate['email'], Flang::_e('active_account'), 'activation', ['username' => $dataToUpdate['username'], 'activation_link' => $activationLink]);
            }else{
                if (isset($dataToUpdate['status']) && !isset($dataToUpdate['email']) && count($dataToUpdate) < 3){
                    echo json_encode($dataToUpdate);exit();
                }
            }
            Session::flash('success', Flang::_e('update_member_success'));
            redirect(admin_url('users/index'));
        } else {
            $this->data('error', Flang::_e('update_error'));
        }
    }
}