<?php
if (!defined('ROOT_PATH')) {
    exit('No direct access allowed.');
}
if (!function_exists('base_url')){
    function base_url($path = '') {
        global $base_url;
        if (empty($base_url)){
            $app_url = config('app');
            $base_url = !empty($app_url['app_url']) ? $app_url['app_url'] : '/';
            unset($app_url);
        }
        return rtrim($base_url, '/') . '/' . trim($path, '/').'/';
    }
}
if (!function_exists('auth_url')){
    function auth_url($path = '') {
        global $base_url;
        if (empty($base_url)){
            $app_url = config('app');
            $base_url = !empty($app_url['app_url']) ? $app_url['app_url'] : '/';
            unset($app_url);
        }
        return rtrim($base_url, '/') . '/account/' . trim($path, '/').'/';
    }
}
if (!function_exists('api_url')){
    function api_url($path = '') {
        global $base_url;
        if (empty($base_url)){
            $app_url = config('app');
            $base_url = !empty($app_url['app_url']) ? $app_url['app_url'] : '/';
            unset($app_url);
        }
        return rtrim($base_url, '/') . '/api/' . trim($path, '/').'/';
    }
}
if (!function_exists('admin_url')){
    function admin_url($path = '') {
        global $base_url;
        if (empty($base_url)){
            $app_url = config('app');
            $base_url = !empty($app_url['app_url']) ? $app_url['app_url'] : '/';
            unset($app_url);
        }
        return rtrim($base_url, '/') . '/admin/' . trim($path, '/').'/';
    }
}
if (!function_exists('api_url')){
    function api_url($path = '') {
        global $base_url;
        if (empty($base_url)){
            $app_url = config('app');
            $base_url = !empty($app_url['app_url']) ? $app_url['app_url'] : '/';
            unset($app_url);
        }
        return rtrim($base_url, '/') . '/api/' . trim($path, '/').'/';
    }
}
if (!function_exists('admin_url_lang')){
    function admin_url_lang($path = '') {
        global $base_url;
        if (empty($base_url)){
            $app_url = config('app');
            $base_url = !empty($app_url['app_url']) ? $app_url['app_url'] : '/';
            unset($app_url);
        }
        return rtrim($base_url, '/') . '/admin/languages/' . trim($path, '/').'/';
    }
}
//admin_url_lang('index') . admin_url_lang('add') => /admin/languages/add
if (!function_exists('admin_url_posttype')){
    function admin_url_posttype($path = '') {
        global $base_url;
        if (empty($base_url)){
            $app_url = config('app');
            $base_url = !empty($app_url['app_url']) ? $app_url['app_url'] : '/';
            unset($app_url);
        }
        return rtrim($base_url, '/') . '/admin/posttype/' . trim($path, '/').'/';
    }
}

// trans table name posttype $tableName = 'fast_posts_'.$data['slug'].'_'.$lang;
if(!function_exists('table_posttype')) {
    function table_posttype($slug, $lang = '') {
        $slug = str_replace('-', '_', $slug);
        if(empty($lang) || $lang === 'all') {
            $tableName = 'fast_posts_'.$slug;
        } else {
            $tableName = 'fast_posts_'.$slug.'_'.$lang;
        }
        return  $tableName;
    }
}
// trans table name relationshop postype
if(!function_exists('table_posttype_relationship')) {
    function table_posttype_relationship($slug) {
        $slug = str_replace('-', '_', $slug);
        $tableName = 'fast_posts_'.$slug.'_rel';
        return  $tableName;
    }
}

// trans table name posts rel
if(!function_exists('table_posts_rel')) {
    function table_posts_rel($posttype_slug, $field) {
        if (is_object($field)){
            $field = (array)$field;
        }
        if (empty($posttype_slug) || empty($field['type']) || empty($field['id']) || ucfirst($field['type']) != 'Reference' || empty($field['post_type_reference']) || !isset($field['table_save_data_reference']) ) return null;
        if ((int)$field['table_save_data_reference'] === 1){
            return ["posttype_slug" => $field['post_type_reference'], "field_id" => $field['id'], "reference" => $posttype_slug, "whereby" => "post_id", "selectby"=> "post_rel_id"];
        }else{
            return ["posttype_slug" => $posttype_slug, "field_id" => $field['id'], "reference" => $field['post_type_reference'], "whereby"=> "post_rel_id", "selectby"=> "post_id"];
        }
    }
}
/*
$posttype_slug = 'movie';
$field = ['id': 1735633754761, 'post_type_reference':'director', 'table_save_data_reference': 0] 
$table_rel = table_posts_rel($posttype_slug, $field) => ["posttype_slug" => movie, "field_id" => 1735633754761, "reference" => director, "whereby" => "post_rel_id", "selectby"=> "post_id"];
$this->modelPostrel = new Postrel($table_rel);

$posttype_slug = 'director';
$field = ['id': 1735633754761, 'post_type_reference':'movie', 'table_save_data_reference': 1] 
["posttype_slug" => movie, "field_id" => 1735633754761, "reference" => director, "whereby" => "post_id", "selectby"=> "post_rel_id"];
*/

if(!function_exists('convers_array')) {
    function convers_array($data) {
        if (is_string($data)) {
            $data = json_decode($data, true);
        } elseif (is_object($data)) {
            $data = (array)$data;
        } elseif (!is_array($data)) {
            $data = [];
        }
        return $data;
    }
}

if(!function_exists('indexByFieldName')) {
    function indexByFieldName($data) {
        $result = [];
        if(empty($data)) {
            return $result;
        }
        foreach ($data as $item) {
            if(isset($item['field_name'])) {
                $result[$item['field_name']] = $item;
            }
            if(isset($item['Field'])) {
                $result[$item['Field']] = $item;
            }
        }
        return $result;
    }
}

if(!function_exists('indexByID')) {
    function indexByID($data) {
        if(is_string($data)) {
            $data = json_decode($data, true);
        }
        $result = [];
        if(empty($data)) {
            return $result;
        }
        foreach ($data as $item) {
            if(isset($item['id'])) {
                $result[$item['id']] = $item;
            }
        }
        return $result;
    }
}


// fomat json oject js to json object php
if(!function_exists('json_decode_array')) {
    function json_decode_array($data) {
        $data = preg_replace('/([{,])(\s*)([a-zA-Z_][a-zA-Z0-9_]*)(\s*):/', '$1"$3":', $data);
        $data = preg_replace('/:(\s*)([a-zA-Z_][a-zA-Z0-9_]*)/', ': "$2"', $data);
        $data = preg_replace('/"null"/', 'null', $data);
        $data = preg_replace('/"true"/', 'true', $data);
        $data = preg_replace('/"false"/', 'false', $data);
        $data = preg_replace('/:\s*,/', ': null,', $data);
        return json_decode($data, true);
    }
}



// debug function
if(!function_exists('prt')) {
    function prt($variable, $name = '') {
        echo '<pre style="background-color: #f4f4f4; padding: 10px; border: 1px solid #ccc; border-radius: 5px;">';
        echo '<h1>'. $name. '</h1> ';
        var_dump($variable);
        echo '</pre>';
    }
}


if(!function_exists('del_cache')) {
    function del_cache($path, $prefix_path = '') {
        // Chuẩn hóa đường dẫn
        $path = trim($path, '/');
        $prefix_path = trim($prefix_path, '/');
        
        // Lặp qua các ngôn ngữ được hỗ trợ
        foreach (LANG_LIST as $lang) {
            // Tạo đường dẫn cơ sở cho mỗi ngôn ngữ
            $cache_dir = $config_files['path'] ?? 'writeable/cache';
            
            $base_cache = realpath(rtrim(ROOT_PATH, '/') . DIRECTORY_SEPARATOR . trim($cache_dir, '/') . DIRECTORY_SEPARATOR);
            
            // Thêm prefix_path nếu có
            if (!empty($prefix_path)) {
                $base_cache .= $prefix_path . '/';
            }
            
            // Gọi hàm xóa đệ quy
            hamXoaFileFolderDeQuy($base_cache . $path . '/');
        }
    }
}


if(!function_exists('hamXoaFileFolderDeQuy')) {
    function hamXoaFileFolderDeQuy($dir) {
        if (!file_exists($dir)) {
            return;
        }
        
        // Quét qua tất cả files và thư mục
        $files = scandir($dir);
        foreach ($files as $file) {
            if ($file != "." && $file != "..") {
                $full_path = $dir . $file;
                
                if (is_dir($full_path)) {
                    // Nếu là thư mục, gọi đệ quy để xóa nội dung bên trong
                    hamXoaFileFolderDeQuy($full_path . '/');
                    rmdir($full_path); // Xóa thư mục rỗng
                } else {
                    // Xóa file
                    unlink($full_path);
                }
            }
        }
        
        // Xóa thư mục gốc nếu trống
        if (is_dir($dir)) {
            rmdir($dir);
        }
    }
}

/*
if (!function_exists('config_set')) {
    function config_set($key, $value, $file = 'Config') {
        static $config;
        $file = ucfirst($file);

        // Nếu biến tĩnh $config chưa có, gán nó là mảng rỗng
        if (!$config) {
            $config = [];
        }

        // Đường dẫn file config
        $filepath = ROOT_PATH . '/application/Config/' . $file . '.php';

        // Nếu chưa có sẵn trong $config, ta load file config (nếu có)
        if (!isset($config[$file])) {
            if (is_file($filepath)) {
                $configData = require $filepath;
                if (is_array($configData)) {
                    $config[$file] = $configData;
                } else {
                    $config[$file] = [];
                }
            } else {
                $config[$file] = [];
            }
        }

        // Gán giá trị mới trong bộ nhớ
        $config[$file][$key] = $value;

        // Hàm nội bộ (anonymous function) để chuyển mảng thành short array syntax
        $shortArrayExport = function ($data, $indentLevel = 1) use (&$shortArrayExport) {
            // Nếu không phải mảng, ta dùng var_export để xuất giá trị
            if (!is_array($data)) {
                return var_export($data, true);
            }

            // Chuỗi thụt lề và đóng thụt lề
            $indentStr        = str_repeat('    ', $indentLevel);
            $closingIndentStr = str_repeat('    ', $indentLevel - 1);

            // Xác định mảng liên kết hay không
            $isAssoc = array_keys($data) !== range(0, count($data) - 1);

            $lines = [];
            foreach ($data as $k => $v) {
                // Gọi đệ quy để xuất giá trị con
                $exportedValue = $shortArrayExport($v, $indentLevel + 1);

                // Nếu mảng liên kết, ta in cả key => value
                if ($isAssoc) {
                    $k       = var_export($k, true); // biến thành 'key'
                    $lines[] = "{$indentStr}{$k} => {$exportedValue},";
                } else {
                    // Nếu mảng thường, chỉ in value
                    $lines[] = "{$indentStr}{$exportedValue},";
                }
            }

            // Gộp lại thành short array syntax
            return "[\n" . implode("\n", $lines) . "\n{$closingIndentStr}]";
        };

        // Chuyển mảng cấu hình thành code PHP (short array)
        $arrayCode = $shortArrayExport($config[$file], 1);

        // Tạo nội dung file
        $content = "<?php\n\nreturn " . $arrayCode . ";\n";

        // Ghi vào file
        file_put_contents($filepath, $content);

        // Trả về giá trị vừa set
        return $config[$file][$key];
    }
}
*/
