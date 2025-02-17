<?php
namespace App\Models;
use System\Core\BaseModel;

class UsersModel extends BaseModel {

    protected $table = 'fast_users';

    // Các cột được phép thêm hoặc sửa
    protected $fillable = ['username', 'email', 'password', 'fullname', 'avatar', 'phone', 'whatsapp', 'telegram', 'skype', 'role', 'permissions', 'optional', 'status', 'birthday', 'gender', 'about_me', 'location', 'display', 'personal', 'online'];

    // Các cột không được phép sửa
    protected $guarded = ['id', 'created_at', 'updated_at'];

    /**
     * Định nghĩa cấu trúc bảng với schema builder
     * 
     * @return array Cấu trúc bảngP
     */
    public function _schema() {
        return [
            'id' => [
                'type' => 'int unsigned',
                'auto_increment' => true,
                'key' => 'primary',
                'null' => false
            ],
            'username' => [
                'type' => 'varchar(40)',
                'key' => 'unique',
                'null' => false
            ],
            'email' => [
                'type' => 'varchar(150)',
                'key' => 'unique',
                'null' => false
            ],
            'password' => [
                'type' => 'varchar(255)',
                'null' => false
            ],
            'fullname' => [
                'type' => 'varchar(150)',
                'null' => true,
                'default' => ''
            ],
            'avatar' => [
                'type' => 'varchar(255)',
                'null' => true,
                'default' => ''
            ],
            'phone' => [
                'type' => 'varchar(30)',
                'null' => true,
                'default' => ''
            ],
            'whatsapp' => [
                'type' => 'varchar(30)',
                'null' => true,
                'default' => ''
            ],
            'telegram' => [
                'type' => 'varchar(100)',
                'null' => true,
                'default' => ''
            ],
            'skype' => [
                'type' => 'varchar(100)',
                'null' => true,
                'default' => ''
            ],
            'role' => [
                'type' => 'enum(\'admin\', \'moderator\', \'author\', \'member\')',
                'null' => false
            ],
            'permissions' => [
                'type' => 'json',
                'null' => true
            ],
            'optional' => [
                'type' => 'json',
                'null' => true
            ],
            'status' => [
                'type' => 'enum(\'active\', \'inactive\', \'banned\')',
                'null' => true,
                'default' => 'active'
            ],
            'birthday' => [
                'type'=> 'date',
                'null'=> true,
            ],
            'gender' => [
                'type' => 'enum(\'male\', \'female\', \'other\')',
                'null' => true,
                'default' => 'male'
            ],
            'about_me' => [
                'type'=> 'text',
            ],
            'location' => [
                'type'=> 'POINT',
                'null'=> true,
            ],
            'save' => [
                'type'=> 'json',
                'null'=> true,
            ],
            'display' => [
                'type' => 'boolean',
                'null' => false,
                'default' => 0
            ],
            'personal' => [
                'type' => 'json',
                'null' => true
            ],
            'online' => [
                'type' => 'boolean',
                'default' => '0'
            ],
            'created_at' => [
                'type' => 'datetime',
                'null' => true,
                'default' => 'CURRENT_TIMESTAMP'
            ],
            'updated_at' => [
                'type' => 'datetime',
                'null' => true,
                'default' => 'CURRENT_TIMESTAMP',
                'on_update' => 'CURRENT_TIMESTAMP'
            ]
        ];
    }

    /**
     * Lấy tất cả người dùng
     * 
     * @param string|null $where Điều kiện truy vấn (tùy chọn)
     * @param array $params Mảng giá trị tương ứng với chuỗi điều kiện
     * @param string|null $orderBy Sắp xếp theo cột (tùy chọn)
     * @param int|null $limit Giới hạn số lượng kết quả (tùy chọn)
     * @return array Danh sách người dùng
     */
    public function getUsers($where = '', $params = [], $orderBy = 'id DESC', $page = 1, $limit = null) {
        return $this->list($this->table, $where, $params, $orderBy, $page, $limit);
    }

    /**
     * Lấy tất cả người dùng theo phan trang
     * 
     * @param string|null $where Điều kiện truy vấn (tùy chọn)
     * @param array $params Mảng giá trị tương ứng với chuỗi điều kiện
     * @param string|null $orderBy Sắp xếp theo cột (tùy chọn)
     * @param int|null $limit Giới hạn số lượng kết quả (tùy chọn)
     * @return array Danh sách người dùng
     */
    public function getUsersPage($where = '', $params = [], $orderBy = 'id DESC', $page = 1, $limit = null) {
        return $this->listpaging($this->table, $where, $params, $orderBy, $page, $limit);
    }

    
    /**
     * Lấy tất cả người dùng theo phan trang có fields 
     * 
     * @param string|null $fields Các fields cần truy vấn (tùy chọn)
     * @param string|null $where Điều kiện truy vấn (tùy chọn)
     * @param array $params Mảng giá trị tương ứng với chuỗi điều kiện
     * @param string|null $orderBy Sắp xếp theo cột (tùy chọn)
     * @param int|null $limit Giới hạn số lượng kết quả (tùy chọn)
     * @return array Danh sách người dùng
     */
    public function getFieldUsersPage($fields = '', $where = '', $params = [], $orderBy = 'id DESC', $page = 1, $limit = null) {
        return $this->listfieldpaging($this->table, $fields, $where, $params, $orderBy, $page, $limit);
    }

    /**
     * Lấy thông tin người dùng theo ID
     * 
     * @param int $id ID người dùng
     * @return array|false Thông tin người dùng hoặc false nếu không tìm thấy
     */
    public function getUserById($id)
    {
        return $this->row($this->table, 'id = ?', [$id]);
    }

    /**
     * Lấy thông tin người dùng theo ID
     * 
     * @param int $id ID người dùng
     * @return array|false Thông tin người dùng hoặc false nếu không tìm thấy
     */
    public function getUserByIdField($fields, $id)
    {
        return $this->rowField($this->table, $fields, 'id = ?', [$id]);
    }


    public function getUserByUsername($username)
    {
        return $this->row($this->table, 'username = ?', [$username]);
    }
    public function getUserByEmail($email)
    {
        return $this->row($this->table, 'email = ?', [$email]);
    }

    /**
     * Thêm người dùng mới
     * 
     * @param array $data Dữ liệu người dùng cần thêm
     * @return oleanol Thành công hoặc thất bại
     */
    public function addUser($data) {
        $data = $this->fill($data); // Lọc dữ liệu được phép thêm
        return $this->add($this->table, $data);
    }

    /**
     * Cập nhật thông tin người dùng
     * 
     * @param int $id ID người dùng cần cập nhật
     * @param array $data Dữ liệu cần cập nhật
     * @return int Số dòng bị ảnh hưởng
     */
    public function updateUser($id, $data) {
        $data = $this->fill($data); // Lọc dữ liệu được phép sửa
        return $this->set($this->table, $data, 'id = ?', [$id]);
    }

    /**
     * Xóa người dùng
     * 
     * @param int $id ID người dùng cần xóa
     * @return int Số dòng bị ảnh hưởng
     */
    public function deleteUser($id) {
        return $this->del($this->table, 'id = ?', [$id]);
    }

    /**
     * Tìm kiếm người dùng
     * 
     * @param $conditions trường chứa field và ký tự tìm kiếm 
     */
    public function searchUser($conditions = [])
    {
        $query = "SELECT * FROM " . $this->table;
        $params = [];

        if (!empty($conditions)) {
            $query .= " WHERE ";
            $whereClauses = [];

            foreach ($conditions as $field => $value) {
                $whereClauses[] = "$field LIKE ?";
                $params[] = '%' . $value . '%';
            }
            $query .= implode(' OR ', $whereClauses);
        }

        return $this->query($query, $params);
    }
    public function getLocation($userId) {
        // Kiểm tra và làm sạch tham số đầu vào
        $userId = (int)$userId;
    
        // Trường cần lấy từ bảng fast_users
        $fields = "ST_X(location) AS longitude, ST_Y(location) AS latitude";
    
        // Truy vấn SQL với tham số hóa hoàn toàn
        $sql = "
            SELECT $fields
            FROM {$this->table}
            WHERE id = ?
              AND status = 'active'
            LIMIT 1
        ";
    
        // Tham số cho truy vấn
        $params = [$userId];
    
        // Thực thi truy vấn
        $result = $this->query($sql, $params);
    
        // Kiểm tra và trả về kết quả
        if (!empty($result)) {
            return [
                'longitude' => (float)$result[0]['longitude'],
                'latitude'  => (float)$result[0]['latitude']
            ];
        }
    
        // Trả về null nếu không tìm thấy người dùng hoặc không có vị trí
        return null;
    }
    
    /**
     * Thêm quan hệ giữa người dùng và người dùng mục tiêu
     * 
     * @param int $user_id ID người dùng thực hiện hành động
     * @param int $target_user_id ID người dùng mục tiêu
     * @param string $relation_type Loại quan hệ (e.g., 'like', 'dislike', 'superlike')
     * @return bool Trả về true nếu thêm thành công, ngược lại false
     */
    public function addRelation($user_id, $target_user_id, $relation_type) {
        try {
            // Kiểm tra dữ liệu đầu vào
            if (!in_array($relation_type, ['like', 'dislike', 'super_like'])) {
                throw new \InvalidArgumentException('Invalid relation type.');
            }

            // Dữ liệu cần thêm
            $data = [
                'user_id' => $user_id,
                'target_user_id' => $target_user_id,
                'relation_type' => $relation_type,
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ];

            // Thêm vào bảng fast_user_relations
            return $this->add('fast_user_relations', $data);
        } catch (\Exception $e) {
            // Ghi log lỗi nếu cần
            // error_log($e->getMessage());
            return false;
        }
    }

    public function get_user_relations($userId, $relationType = 'like', $limit = 10, $page = 1) {
        // Làm sạch và kiểm tra các tham số đầu vào
        $userId = (int)$userId;
        $relationType = trim($relationType);
        $page = max((int)$page, 1);
        $limit = max((int)$limit, 1);
        $offset = ($page - 1) * $limit;
    
        // Truy Vấn Sử Dụng Window Functions để Lấy Dữ Liệu và Tổng Số
        $sql = "
            SELECT 
                r.user_id,
                COUNT(*) OVER() AS total_count
            FROM fast_user_relations r
            WHERE r.target_user_id = ?
              AND r.relation_type = ?
            ORDER BY r.created_at DESC
            LIMIT $limit OFFSET $offset
        ";
        $params = [$userId, $relationType];
        $idsResult = $this->query($sql, $params);
    
        // Kiểm tra xem có bản ghi nào không
        if (empty($idsResult)) {
            return [
                'data' => [],
                'is_next' => false,
                'page' => $page,
                'total' => 0
            ];
        }
    
        // Lấy tổng số từ bản ghi đầu tiên
        $total = (int)$idsResult[0]['total_count'];
    
        // Xác định xem có trang tiếp theo không
        if ($page * $limit < $total ) {
            $is_next = true;
        } else {
            $is_next = false;
        }
    
        // Trích xuất các user_id
        $userIds = array_column($idsResult, 'user_id');
    
        // Truy Vấn 2: Lấy thông tin chi tiết của người dùng dựa trên các user_id đã lấy
        // Tạo chuỗi placeholders cho IN clause
        $placeholders = implode(',', array_fill(0, count($userIds), '?'));
        $fields = "
            id,
            username,
            email,
            fullname,
            ST_X(location) AS longitude,
            ST_Y(location) AS latitude,
            avatar,
            phone,
            telegram,
            whatsapp,
            skype,
            birthday,
            about_me,
            personal,
            online
        ";
        $detailsSql = "
            SELECT $fields
            FROM fast_users
            WHERE id IN ($placeholders)
              AND status = 'active'
        ";
        $detailsParams = $userIds;
        $users = $this->query($detailsSql, $detailsParams);
    
        // Chuẩn bị kết quả trả về
        $result = [
            'data' => $users,
            'is_next' => $is_next,
            'page' => $page,
            'total' => $total
        ];

        return $result;
    }
    
    
}
