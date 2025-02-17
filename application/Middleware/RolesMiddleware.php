<?php
namespace App\Middleware;
class RolesMiddleware {
    /**
     * Xử lý middleware
     * 
     * @param mixed $request Thông tin request
     * @param callable $next Middleware tiếp theo
     * @return mixed
     */
    public function handle($request, $next) {
        //return $next($request);
        // Lấy tên controller và action từ request (giả sử chúng được lưu trong request)
        $controller = $request['controller'] ?? '';
        $action = $request['action'] ?? '';
        // Lấy quyền từ session
        if (!\System\Libraries\Session::has('user_id')) {
            // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
            redirect(base_url('account/login'));
        }
        $user_id = \System\Libraries\Session::get('user_id');
        $usersModel = new \App\Models\UsersModel();
        $me = $usersModel->getUserById($user_id);
        if (!empty($me) && !empty($me['id'])){
            $permissions = json_decode($me['permissions']);
            if ($this->checkPermission($permissions, $controller, $action)) {
                // Cho phép tiếp tục nếu có quyền
                return $next($request);
            }
        }
        // Nếu không có quyền, hiển thị thông báo lỗi
        throw new \System\Core\AppException('You not have permission access this page!<span style="display:none">'.$controller.'->'.$action.'()</span>', 403, null, 403);
    }

    /**
     * Kiểm tra xem người dùng có quyền truy cập vào controller và action không
     * 
     * @param array $permissions Mảng quyền của người dùng
     * @param string $controller Tên controller
     * @param string $action Tên action
     * @return bool
     */
    protected function checkPermission($permissions, $controller, $action) {
        // Kiểm tra nếu quyền tồn tại cho controller và action
        foreach ($permissions as $account_controller => $account_actions){
            $account_controller = '\\'.$account_controller.'Controller';
            if (strpos($controller, $account_controller) !== FALSE){
                if (in_array($action, $account_actions)){
                    return true;
                }
            }
        }
        return false;
    }
}
