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
        return rtrim($base_url, '/') . '/' . LANG . '/' . trim($path, '/').'/';
    }
}

if (!function_exists('movie_url')){
    function movie_detail($slug = '') {
        return rtrim(base_url('/movie/'.$slug), '/').'.html'; //End of URL is: .html, .jpg, .webp...v.v.v. need remove / at the End
    }
    function movie_cat($slug = '') {
        return base_url('/movie/'.$slug); // URL: /vi/movie/cat/hanh-dong/ or /vi/movie/trending/
    }
}

if (!function_exists('cat_url')) {
    function cat_url($slug, $posttype = '', $lang = LANG) {
        // Kiểm tra nếu thiếu slug hoặc posttype thì trả về rỗng
        if (empty($slug) || empty($posttype)) {
            return '';
        }

        // Chuẩn hóa đầu ra URL
        $lang = htmlspecialchars($lang, ENT_QUOTES, 'UTF-8');
        $posttype = htmlspecialchars($posttype, ENT_QUOTES, 'UTF-8');
        $slug = htmlspecialchars($slug, ENT_QUOTES, 'UTF-8');

        // Tạo URL theo cấu trúc ./lang/posttype/cat/slug
        return sprintf('/%s/%s/cat/%s/', $lang, $posttype, $slug);
    }
}

if (!function_exists('page_url')) {
    function page_url($slug, $posttype = '', $lang = LANG) {
        // Kiểm tra nếu thiếu slug hoặc posttype thì trả về rỗng
        if (empty($slug) || empty($posttype)) {
            return '';
        }

        // Chuẩn hóa đầu ra URL
        $lang = htmlspecialchars($lang, ENT_QUOTES, 'UTF-8');
        $posttype = htmlspecialchars($posttype, ENT_QUOTES, 'UTF-8');
        $slug = htmlspecialchars($slug, ENT_QUOTES, 'UTF-8');

        // Tạo URL theo cấu trúc ./lang/posttype/cat/slug
        return sprintf('/%s/%s/%s/', $lang, $posttype, $slug);
    }
}

if (!function_exists('single_url')) {
    function single_url($slug, $posttype = '', $lang = LANG) {
        // Kiểm tra nếu thiếu slug hoặc posttype thì trả về rỗng
        if (empty($slug) || empty($posttype)) {
            return '';
        }

        // Chuẩn hóa đầu ra URL
        $lang = htmlspecialchars($lang, ENT_QUOTES, 'UTF-8');
        $posttype = htmlspecialchars($posttype, ENT_QUOTES, 'UTF-8');
        $slug = htmlspecialchars($slug, ENT_QUOTES, 'UTF-8');

        // Tạo URL theo cấu trúc ./lang/posttype/slug.html
        return sprintf('/%s/%s/%s.html', $lang, $posttype, $slug);
    }
}

if (!function_exists('chapter_url')) {
    function chapter_url($slug, $index, $posttype = '', $lang = LANG) {
        // Kiểm tra nếu thiếu slug hoặc posttype thì trả về rỗng
        if (empty($slug) || empty($posttype)) {
            return '';
        }

        // Chuẩn hóa đầu ra URL
        $lang = htmlspecialchars($lang, ENT_QUOTES, 'UTF-8');
        $posttype = htmlspecialchars($posttype, ENT_QUOTES, 'UTF-8');
        $slug = htmlspecialchars($slug, ENT_QUOTES, 'UTF-8');
        $index = htmlspecialchars($index, ENT_QUOTES, 'UTF-8');

        // Tạo URL theo cấu trúc ./lang/posttype/slug/tap-1
        return sprintf('/%s/%s/%s/tap-%s/', $lang, $posttype, $slug, $index);
    }
}

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
