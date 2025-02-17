<?php
//This Config cannot change at Admin Options pages (for Safe Security)!
//Config url, name, timezone, max file size, email, theme name dua ve option savefile luon.
return [
    // Cấu hình ứng dụng
    'app' => [
        'debug' => true,
        'environment' => 'development',
        'app_url' => 'https://php-fast.net/',
        'app_name' => 'php-fast',
        'app_timezone' => 'Asia/Ho_Chi_Minh'
    ],
    'files' => [
        'path' => 'writeable/uploads',
        'allowed_types' => ['jpg', 'jpeg', 'png', 'gif', 'webp', 'pdf', 'docx', 'doc', 'xls', 'xlsx', 'csv', 'ppt', 'pptx', 'txt', 'rar', 'zip', 'iso' , 'mp3', 'wav', 'mkv', 'mp4'], // Loại tệp cho phép
        'max_file_size' => 10485760, // Giới hạn kích thước tệp tối đa: 10MB (tính theo bytes)
        'images_types' => ['jpg', 'jpeg', 'png', 'gif', 'webp','ico','svg'], // Các loại tệp được hỗ trợ hiển thị thumbnail
        'max_file_count' => 10, // Giới hạn số lượng tệp được tải lên trong một lần
        'limit' => 40, // Giới hạn số lượng tệp tin trên mỗi trang phân trang
    ],
    'security' => [
        'app_id' => '123456',
        'app_secret' => 'keysecret',
    ],
    'db' => [
        // Cấu hình cơ sở dữ liệu
        'db_driver' => 'mysql',
        'db_host' => '127.0.0.1',
        'db_port' => 3306,
        'db_username' => 'root',
        'db_password' => '',
        'db_database' => 'phpfast',
        'db_charset'  => 'utf8mb4',
        'db_collate'  => 'utf8mb4_unicode_ci',
    ],
    'email' => [
        'mail_mailer' => 'smtp',
        'mail_host' => 'smtp.gmail.com',
        'mail_port' => 587,
        'mail_username' => 'toitenlagi@gmail.com',
        'mail_password' => 'matkhaulagi',
        'mail_encryption' => 'tls',
        'mail_charset'  =>  'UTF-8',
        'mail_from_address' => 'toitenlagi@gmail.com',
        'mail_from_name' => 'MovieCenter',
    ],
    'cache' => [
        'cache_driver' => 'redis',
        'cache_host' => '127.0.0.1',
        'cache_port' => 6379,
        'cache_username' => '',
        'cache_password' => '',
        'cache_database' => 0,
    ],
    'theme' => [
        'theme_path' => 'application/Views',
        'theme_name' => 'default'
    ]
    
];