<?php
$routes->get('account/logout', 'Backend\AuthController::logout',[\App\Middleware\AuthMiddleware::class]);
$routes->get('account/profile', 'Backend\AuthController::profile',[\App\Middleware\AuthMiddleware::class]);
$routes->post('account/profile', 'Backend\AuthController::profile',[\App\Middleware\AuthMiddleware::class]);
$routes->get('account/(:any)/(:any)', 'Backend\AuthController::$1:$2',[\App\Middleware\NoauthMiddleware::class]);
$routes->post('account/(:any)/(:any)', 'Backend\AuthController::$1:$2',[\App\Middleware\NoauthMiddleware::class]);
$routes->get('account/(:any)/(:any)/(:any)', 'Backend\AuthController::$1:$2:$3',[\App\Middleware\NoauthMiddleware::class]);
$routes->post('account/(:any)/(:any)', 'Backend\AuthController::$1:$2:$3',[\App\Middleware\NoauthMiddleware::class]);
$routes->get('account/(:any)/', 'Backend\AuthController::$1',[\App\Middleware\NoauthMiddleware::class]);
$routes->post('account/(:any)', 'Backend\AuthController::$1',[\App\Middleware\NoauthMiddleware::class]);

$routes->get('admin/auth/logout/', 'Backend\AuthController::logout');
$routes->get('admin/(:any)/(:any)/(:any)/(:any)/(:any)', 'Backend\$1Controller::$2:$3:$4:$5',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);
$routes->post('admin/(:any)/(:any)/(:any)/(:any)/(:any)', 'Backend\$1Controller::$2:$3:$4:$5',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);
$routes->get('admin/(:any)/(:any)/(:any)', 'Backend\$1Controller::$2:$3',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);
$routes->post('admin/(:any)/(:any)/(:any)', 'Backend\$1Controller::$2:$3',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);
$routes->get('admin/(:any)/(:any)', 'Backend\$1Controller::$2',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);
$routes->post('admin/(:any)/(:any)', 'Backend\$1Controller::$2',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);
$routes->get('admin/(:any)', 'Backend\$1Controller::index',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);
$routes->get('admin', 'Backend\HomeController::index',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);
 // $routes->post('admin/terms/(:any)/(:any)/(:any)/(:num)', 'Backend\TermsController::$3:$1:$2:$4',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);
// $routes->get('admin/terms/(:any)/(:any)/(:any)/(:num)', 'Backend\TermsController::$3:$1:$2:$4',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]); // $routes->get('admin/terms/(:any)/(:any)', 'Backend\TermsController::index:$1:$2',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]); // $routes->post('admin/terms/(:any)/(:any)', 'Backend\TermsController::index:$1:$2',[\App\Middleware\AuthMiddleware::class,\App\Middleware\RolesMiddleware::class]);

// Đăng ký các route cho Frontend
$routes->get('/(:any)/cat/(:any)/paged/(:num)', 'Frontend\$1Controller::category:$2:$3'); // Example: /movie/cat/tien-hiep/
$routes->get('/(:any)/(:any)/paged/(:num)', 'Frontend\$1Controller::page:$2:$3'); // Example: /movie/trending/paged/2
$routes->get('/(:any)/paged/(:num)', 'Frontend\$1Controller::index:$2');  // Example: /search/paged/2
$routes->get('/(:any)/cat/(:any)/', 'Frontend\$1Controller::category:$2'); // Example: /movie/cat/tien-hiep/
$routes->get('/(:any)/(:any)/(:any)', 'Frontend\$1Controller::chapter:$2:$3'); // Example: /movie/pham-nhan-tu-tien/tap-1
$routes->get('/(:any)/(:any).html', 'Frontend\$1Controller::detail:$2'); // Example: /movie/pham-nhan-tu-tien.html
$routes->get('/(:any)/(:any)/', 'Frontend\$1Controller::page:$2'); // Example: /movie/trending/
$routes->get('/(:any)/', 'Frontend\$1Controller::index');  // Example: /movie/

$routes->get('/(:any)', 'Frontend\HomeController::$1');  // Example: /chat
$routes->get('/', 'Frontend\HomeController::index');  // Example: /






//ĐÂY LÀ PHẦN CODE BACKUP NHƯNG KO MUỐN XÓA. SAU CÓ THỂ DÙNG LẠI 1 SỐ CÁI.

// $routes->get('product/(:num)/(:string)', 'ProductController::show:$1:$2');
// $routes->post('product/create', 'ProductController::create');
// $routes->put('product/update/(:num)', 'ProductController::update/$1');
// $routes->delete('product/delete/(:num)', 'ProductController::delete/$1');

// $routes->get('admin/index/', 'AdminController::index');
// $routes->get('admin/(:any)/(:any)', 'AdminController::$1:$2');

// $routes->get('admin/(:any)', 'AdminController::$1', [
//     \App\Middleware\AuthMiddleware::class,
//     \App\Middleware\PermissionMiddleware::class
// ]); //router de khi goi bat ky admin/string nào nó cũng gọi đến Controller -> Action

// $routes->post('admin/edit', 'AdminController::edit', [
//     \App\Middleware\AuthMiddleware::class,
//     \App\Middleware\PermissionMiddleware::class
// ]);

// $routes->delete('admin/delete', 'AdminController::delete', [
//     \App\Middleware\AuthMiddleware::class,
//     \App\Middleware\PermissionMiddleware::class
// ]);

