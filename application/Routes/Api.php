<?php

$routes->get('/api/v1/auth/(:any)/', 'Api\V1\AuthController::$1');
$routes->post('/api/v1/auth/(:any)', 'Api\V1\AuthController::$1');


$routes->get('/api/v1/posts/(:any)/(:any)/(:any)/(:any)/(:num)/', 'Api\V1\PostsController::$1:$2:$3:$4:$5');
$routes->post('/api/v1/posts/(:any)/(:any)/(:any)/(:any)/(:num)/', 'Api\V1\PostsController::$1:$2:$3:$4:$5');
$routes->get('/api/v1/posts/(:any)/(:any)/(:any)/(:num)/', 'Api\V1\PostsController::$1:$2:$3:$4');
$routes->post('/api/v1/posts/(:any)/(:any)/(:any)/(:num)/', 'Api\V1\PostsController::$1:$2:$3:$4');
$routes->get('/api/v1/(:any)/(:any)/(:any)/(:any)', 'Api\V1\$1Controller::$2:$3:$4');
$routes->post('/api/v1/(:any)/(:any)/(:any)/(:any)', 'Api\V1\$1Controller::$2:$3:$4');
$routes->get('/api/v1/(:any)/(:any)/(:any)', 'Api\V1\$1Controller::$2:$3');
$routes->post('/api/v1/(:any)/(:any)/(:any)', 'Api\V1\$1Controller::$2:$3');
$routes->get('/api/v1/(:any)/(:any)', 'Api\V1\$1Controller::$2');
$routes->post('/api/v1/(:any)/(:any)', 'Api\V1\$1Controller::$2');

// dành cho file và auth controller không thông qua /v1/
$routes->get('api/(:any)/(:any)', 'Api\$1Controller::$2');
$routes->post('api/(:any)/(:any)', 'Api\$1Controller::$2');
$routes->put('api/(:any)/(:any)', 'Api\$1Controller::$2');
$routes->delete('api/(:any)/(:any)', 'Api\$1Controller::$2');


// Đăng ký routes cho API
// API Auth 
// $routes->get('/api/v1/auth/(:any)/', 'Api\V1\AuthController::$2');
// $routes->post('/api/v1/auth/(:any)', 'Api\V1\AuthController::$2');

// $routes->get('/api/v1/posts/(:any)/(:any)/(:num)/(:num)/', 'Api\V1\PostsController::$2:$3:$4:$5');

// $routes->get('/api/v1/(:any)/(:any)/(:any)/(:any)', 'Api\V1\$2Controller::$3:$4:$5:$1');
// $routes->post('/api/v1/(:any)/(:any)/(:any)/(:any)', 'Api\V1\$2Controller::$3:$4:$5:$1');
// $routes->get('/api/v1/(:any)/(:any)/(:any)', 'Api\V1\$2Controller::$3:$4:$1');
// $routes->post('/api/v1/(:any)/(:any)/(:any)', 'Api\V1\$2Controller::$3:$4:$1');
// $routes->get('/api/v1/(:any)/(:any)', 'Api\V1\$2Controller::$3:$1');
// $routes->post('/api/v1/(:any)/(:any)', 'Api\V1\$2Controller::$3:$1');

// $routes->get('api/v1/(:any)/(:any)', 'Api\V1\$1Controller::$2');
// $routes->post('api/v1/(:any)/(:any)', 'Api\V1\$1Controller::$2');
// $routes->put('api/v1/(:any)/(:any)', 'Api\V1\$1Controller::$2');
// $routes->delete('api/v1/(:any)/(:any)', 'Api\V1\$1Controller::$2');

