<?php
namespace System\Core;

abstract class BaseModel {
    protected $db;

    protected $table = '';

    // Cột được phép thêm hoặc sửa (cần khai báo ở model con)
    protected $fillable = [];

    // Cột không được phép sửa (cần khai báo ở model con)
    protected $guarded = [];

    /**
     * Khởi tạo kết nối cơ sở dữ liệu
     */
    public function __construct() {
        // Gọi lớp kết nối từ config mới
        $configdb = config('db');  // Sử dụng config từ file config.php với key 'db'
        $this->db = $this->loadDatabaseDriver($configdb['db_driver'], $configdb);
        unset($configdb);
    }

    /**
     * Tải driver cơ sở dữ liệu theo loại (MySQL, PostgreSQL, ...)
     * 
     * @param string $driver Tên driver cơ sở dữ liệu
     * @param array $config Cấu hình cơ sở dữ liệu
     * @return mixed Đối tượng kết nối cơ sở dữ liệu
     */
    protected function loadDatabaseDriver($driver, $config) {
        $driverClass = '\\System\\Drivers\\Database\\' . ucfirst($driver) . 'Driver';
        if (class_exists($driverClass)) {
            return new $driverClass($config);
        } else {
            throw new AppException("Database driver '{$driver}' not have config.", 500);
        }
    }
    
    public function _schema() {
        return [];
    }

    public function _table() {
        return $this->table;
    }

    /**
     * Hàm để lấy các cột đã khai báo trong model
     */
    protected function _columns() {
        return $this->fillable;
    }

    /**
     * Lọc dữ liệu được phép thêm hoặc sửa theo thuộc tính $fillable
     * 
     * @param array $data Dữ liệu đầu vào
     * @return array Dữ liệu đã lọc
     */
    protected function fill($data) {
        try{
            return array_filter($data, function ($key) {
                return in_array($key, $this->fillable) && !in_array($key, $this->guarded);
            }, ARRAY_FILTER_USE_KEY);
        } catch (\Throwable $e) {
            throw new AppException("Fill Data Error: ".$e->getMessage()."<br /><b>".json_encode($data)."</b>", 500);
        }
    }

    /**
     * Lấy một dòng từ kết quả truy vấn
     * 
     * @param string $table Tên bảng
     * @param array $where Điều kiện truy vấn
     * @return array|false Dòng dữ liệu hoặc false nếu không có kết quả
     */
    public function row($table, $where = '', $params = []) {
        return $this->db->fetchRow($table, $where, $params);
    }

    /**
     * Lấy một dòng từ kết quả truy vấn
     * 
     * @param string $table Tên bảng
     * @param array $where Điều kiện truy vấn
     * @return array|false Dòng dữ liệu hoặc false nếu không có kết quả
     */
    public function rowField($table, $fields, $where = '', $params = []) {
        return $this->db->fetchRowField($table, $fields, $where, $params);
    }

    /**
     * Lấy nhiều dòng từ kết quả truy vấn
     * 
     * @param string $table Tên bảng
     * @param array $where Điều kiện truy vấn
     * @param string|null $orderBy Sắp xếp
     * @param int|1 $page So trang phan trangßß
     * @param int|null $limit Giới hạn kết quả
     * @return array Danh sách dòng dữ liệu
     */
    public function list($table, $where = '', $params = [], $orderBy = '', $page = 1, $limit = null) {
        return $this->db->fetchAll($table, $where, $params, $orderBy, $page, $limit);
    }

    /**
     * Lấy nhiều dòng phân trang từ kết quả truy vấn
     * 
     * @param string $table Tên bảng
     * @param array $where Điều kiện truy vấn
     * @param string|null $orderBy Sắp xếp
     * @param int|null $page Number trang phan trang
     * @param int|null $limit Giới hạn kết quả
     * @return array Danh sách dòng dữ liệu
     */
    public function listpaging($table, $where = '', $params = [], $orderBy = '', $page=1, $limit = null) {
        return $this->db->fetchPagination($table, $where, $params, $orderBy, $page, $limit);
    }

    /**
     * Lấy nhiều dòng phân trang từ kết quả truy vấn theo field
     * 
     * @param string $table Tên bảng
     * @param string $fiedls Các field cần lấy 
     * @param array $where Điều kiện truy vấn
     * @param string|null $orderBy Sắp xếp
     * @param int|null $page Number trang phan trang
     * @param int|null $limit Giới hạn kết quả
     * @return array Danh sách dòng dữ liệu
     */
    public function listfieldpaging($table, $fields = '*', $where = '', $params = [], $orderBy = '', $page=1, $limit = null) {
        return $this->db->fetchPaginationWithField($table, $fields, $where, $params, $orderBy, $page, $limit);
    }


    /**
     * Thực hiện câu truy vấn INSERT
     * 
     * @param string $table Tên bảng
     * @param array $data Dữ liệu cần chèn
     * @return bool Thành công hoặc thất bại
     */
    public function add($table, $data) {
        if ($this->db->insert($table, $data)){
            return $this->lastInsertId();
        }
        return null;
    }

    /**
     * Thực hiện câu truy vấn UPDATE
     * 
     * @param string $table Tên bảng
     * @param array $data Dữ liệu cần cập nhật
     * @param array $where Điều kiện cập nhật
     * @return int Số dòng bị ảnh hưởng
     */
    public function set($table, $data, $where = '', $params = []) {
        return $this->db->update($table, $data, $where, $params);
    }

    /**
     * Thực hiện câu truy vấn DELETE
     * 
     * @param string $table Tên bảng
     * @param array $where Điều kiện xóa
     * @return int Số dòng bị ảnh hưởng
     */
    public function del($table, $where = '', $params = []) {
        return $this->db->delete($table, $where, $params);
    }

    /**
     * Thực hiện câu truy vấn SQL tự do
     */
    public function query($query, $params = []) {
        return $this->db->query($query, $params);
    }

    /**
     * Lấy ID của bản ghi vừa chèn
     */
    public function lastInsertId() {
        return $this->db->lastInsertId();
    }

    /**
     * Đếm số lượng bản ghi
     */
    public function count($table, $where = '', $params = []) {
        return $this->db->count($table, $where, $params);
    }
}
