<?php
namespace App\Controllers;

use System\Core\BaseController;
use App\Models\UsersModel;
use App\Libraries\Fasttoken;
use App\Libraries\Fastlang as Flang;
use System\Libraries\Session;

class ApiController extends BaseController
{
    protected $usersModel;
    public function __construct()
    {
        // Gọi constructor của BaseController (để duy trì chức năng chung)
        parent::__construct();
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Allow-Headers: Content-Type, Authorization');

        $this->usersModel = new UsersModel();
    }

    protected function _authentication() {
        $access_token = Fasttoken::getToken();
        if(Session::has('user_id')) {
            $user_id = clean_input(Session::get('user_id'));
            
        } elseif (!empty($access_token)) {
            $config_security = config('security');
            $me_data = Fasttoken::decodeToken($access_token, $config_security['app_secret']);
            if (!$me_data['success']) {
                return $this->error(Flang::_e('auth_token_invalid'), [$me_data['message']], 401);
            }
            $user_id = $me_data['data']['user_id'] ?? null;
            if (empty($user_id)) {
                return $this->error(Flang::_e('token_invalid'), [], 401);
            }
        } else {
            $this->error(Flang::_e('user_not_found'), [], 403);
        }

        $user = $this->usersModel->getUserById($user_id);
        if (empty($user)) {
            return $this->error(Flang::_e('user_not_found'), [], 404);
        } else {
            return $user;
        }
    }
}