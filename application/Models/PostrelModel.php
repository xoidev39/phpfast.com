<?php
namespace App\Models;
use System\Core\BaseModel;

class PostrelModel extends BaseModel {
    public function __construct()
    {
        parent::__construct();
    }
    public function getPosts($post_id = '', $posttype = '', $posttype_rel = '', $save_rel = false, $lang = '')
    {
        if (empty($post_id) || empty($posttype) || empty($posttype_rel) || empty($lang)) {
            return []; // Trả về mảng rỗng nếu thiếu tham số
        }
        $table = 'fast_posts_' . $posttype_rel . '_' . $lang;
        if(empty($lang) || $lang === 'all') {
            $table = 'fast_posts_' . $posttype_rel;
        } else {
            $table = 'fast_posts_' . $posttype_rel . '_' . $lang;
        }
        $tablerel = $save_rel
            ? 'fast_posts_' . $posttype . '_rel'
            : 'fast_posts_' . $posttype_rel . '_rel';
        $selectby = $save_rel ? 'post_rel_id' : 'post_id';
        $whereby = $save_rel ? 'post_id' : 'post_rel_id';
        if (!preg_match('/^[a-zA-Z0-9_-]+$/', $table) || !preg_match('/^[a-zA-Z0-9_-]+$/', $tablerel)) {
            throw new \InvalidArgumentException('Table name not valid');
        }
        $sql = "SELECT * FROM {$table} WHERE id IN ( SELECT {$selectby} FROM {$tablerel} WHERE {$whereby} = ? );";
        try {
            return $this->query($sql, [$post_id]);
        } catch (\PDOException $e) {
            error_log("Database error in Postrel->getPosts: " . $e->getMessage());
            return null;
        } catch (\Exception $e) {
            error_log("Error in Postrel->getPosts: " . $e->getMessage());
            return null;
        }
    }


    public function countPosts($post_id = '', $posttype = '', $posttype_rel = '', $save_rel = false, $lang = '')
{


    // Validate required parameters
    if (empty($post_id) || empty($posttype) || empty($posttype_rel) || empty($lang)) {
        return 0; // Trả về 0 nếu thiếu tham số
    }

    // Xác định tên các bảng dựa vào tham số
    if(empty($lang) || $lang === 'all') {
        $table = 'fast_posts_' . $posttype_rel;
    } else {
        $table = 'fast_posts_' . $posttype_rel . '_' . $lang;
    }
    $tablerel = $save_rel 
        ? 'fast_posts_' . $posttype . '_rel' 
        : 'fast_posts_' . $posttype_rel . '_rel';
    
    // Xác định các trường để query
    $selectby = $save_rel ? 'post_rel_id' : 'post_id';
    $whereby = $save_rel ? 'post_id' : 'post_rel_id';

    // Validate table names để tránh SQL injection
    if (!preg_match('/^[a-zA-Z0-9_-]+$/', $table) || !preg_match('/^[a-zA-Z0-9_-]+$/', $tablerel)) {
        throw new \InvalidArgumentException('Table name not valid');
    }

    // Query đếm số lượng relationship
    $sql = "SELECT COUNT(*) as count FROM {$table} WHERE id IN ( SELECT {$selectby} FROM {$tablerel} WHERE {$whereby} = ? );";

    try {
        $result = $this->query($sql, [$post_id]);
        return isset($result[0]['count']) ? (int)$result[0]['count'] : 0;
    } catch (\PDOException $e) {
        error_log("Database error in Postrel->countPosts: " . $e->getMessage());
        return 0;
    } catch (\Exception $e) {
        error_log("Error in Postrel->countPosts: " . $e->getMessage());
        return 0;
    }
}

public function getChapter($posttype, $post_id, $index, $lang = LANG)
{
    // Kiểm tra các tham số bắt buộc
    if (empty($posttype) || empty($post_id) || empty($index) || empty($lang)) {
        return null; // Trả về null nếu thiếu tham số
    }

    // Xác định tên bảng quan hệ và bảng chapter
    $table_rel  = 'fast_posts_' . $posttype . '_chapter_rel';
    $table_chap = 'fast_posts_' . $posttype . '_chapter_' . $lang;
    // Kiểm tra bảo mật tên bảng (tránh SQL injection)
    if (
        !preg_match('/^[a-zA-Z0-9_-]+$/', $table_rel) ||
        !preg_match('/^[a-zA-Z0-9_-]+$/', $table_chap)
    ) {
        throw new \InvalidArgumentException('Table name not valid');
    }

    // SQL:
    // 1) Tìm tất cả id chapter trong bảng quan hệ có post_id = $post_id
    // 2) Lọc tiếp trong bảng chapter với điều kiện `id` nằm trong các id ở bước 1
    //    và `index` = $index (số tập cần tìm)
    // 3) Lấy 1 bản ghi (LIMIT 1) vì mỗi index thường tương ứng 1 tập duy nhất
    $sql = "SELECT *
            FROM {$table_chap}
            WHERE id IN (
                SELECT post_id
                FROM {$table_rel}
                WHERE post_rel_id = ?
            )
            AND `index` = ?
            LIMIT 1;";
    try {
        // Thực thi query, truyền vào 2 tham số: post_id và index (số tập)
        $result = $this->query($sql, [$post_id, $index]);

        // Kiểm tra và trả về bản ghi đầu tiên nếu có
        return isset($result[0]) ? $result[0] : null;
    } catch (\PDOException $e) {
        // Ghi log nếu có lỗi PDO
        error_log("Database error in Postrel->getChapter: " . $e->getMessage());
        return null;
    } catch (\Exception $e) {
        // Ghi log nếu có lỗi khác
        error_log("Error in Postrel->getChapter: " . $e->getMessage());
        return null;
    }
}

public function getListChapter($posttype, $post_id, $lang = LANG)
{
    // Kiểm tra các tham số bắt buộc
    if (empty($posttype) || empty($post_id) || empty($lang)) {
        return null; // Trả về null nếu thiếu tham số
    }

    // Xác định tên bảng quan hệ và bảng chapter
    $table_rel  = 'fast_posts_' . $posttype . '_chapter_rel';
    $table_chap = 'fast_posts_' . $posttype . '_chapter_' . $lang;
    // Kiểm tra bảo mật tên bảng (tránh SQL injection)
    if (
        !preg_match('/^[a-zA-Z0-9_-]+$/', $table_rel) ||
        !preg_match('/^[a-zA-Z0-9_-]+$/', $table_chap)
    ) {
        throw new \InvalidArgumentException('Table name not valid');
    }

    // SQL:
    // 1) Tìm tất cả id chapter trong bảng quan hệ có post_id = $post_id
    // 2) Lọc tiếp trong bảng chapter với điều kiện `id` nằm trong các id ở bước 1
    //    và `index` = $index (số tập cần tìm)
    // 3) Lấy 1 bản ghi (LIMIT 1) vì mỗi index thường tương ứng 1 tập duy nhất
    $sql = "SELECT *
            FROM {$table_chap}
            WHERE id IN (
                SELECT post_id
                FROM {$table_rel}
                WHERE post_rel_id = ?
            );";
    try {
        // Thực thi query, truyền vào 2 tham số: post_id và index (số tập)
        $result = $this->query($sql, [$post_id]);

        // Kiểm tra và trả về bản ghi đầu tiên nếu có
        return $result;
    } catch (\PDOException $e) {
        // Ghi log nếu có lỗi PDO
        error_log("Database error in Postrel->getChapter: " . $e->getMessage());
        return null;
    } catch (\Exception $e) {
        // Ghi log nếu có lỗi khác
        error_log("Error in Postrel->getChapter: " . $e->getMessage());
        return null;
    }
}

}