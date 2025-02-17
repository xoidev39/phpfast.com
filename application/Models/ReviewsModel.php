<?php
namespace App\Models;
use System\Core\BaseModel;

class ReviewsModel extends BaseModel {

    protected $table = 'fast_comments';

    // Columns that are fillable (can be added or modified)
    protected $fillable = ['user_id', 'post_id', 'posttype', 'lang', 'content', 'created_at', 'updated_at', 'ip_address', 'parent'];

    // Columns that are guarded (cannot be modified)
    protected $guarded = ['id', 'created_at', 'updated_at'];


    /**
     * Define the table schema
     * 
     * @return array Table schema
     */
    public function _schema() {
        return [
            'id' => [
                'type' => 'int unsigned',
                'auto_increment' => true,
                'key' => 'primary',
                'null' => false
            ],
            'user_id' => [
                'type' => 'int',
                'null' => false,
            ],
            'post_id' => [
                'type' => 'int',
                'null' => false,
            ],
            'posttype' => [
                'type' => 'varchar(150)',
                'null' => false,
            ],
            'lang' => [
                'type' => 'varchar(150)',
                'null' => false,
            ],
            'content' => [
                'type' => 'text',
                'null' => false,
            ],
            'ip_address' => [
                'type' => 'varchar(50)',
                'null' => true,
            ],
            'parent' => [
                'type' => 'int',
                'null' => true,
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
     * Get all records
     */
    public function getReviews($where = '', $params = [], $orderBy = 'id DESC', $limit = null, $offset = null) {
        return $this->list($this->table, $where, $params, $orderBy, $limit, $offset);
    }

    /**
     * Lấy thông tin comment theo ID
     * 
     * @param int $id ID comment
     * @return array|false Thông tin comments hoặc false nếu không tìm thấy
     */
    public function getCommentById($id)
    {
        return $this->row($this->table, 'id = ?', [$id]);
    }

    /**
     * Add a new record
     */
    public function addReviews($data) {
        $data = $this->fill($data);
        return $this->add($this->table, $data);
    }

    /**
     * Update an existing record
     */
    public function setReviews($id, $data) {
        $data = $this->fill($data);
        return $this->set($this->table, $data, 'id = ?', [$id]);
    }

    /**
     * Delete a record
     */
    public function delReviews($id) {
        return $this->del($this->table, 'id = ?', [$id]);
    }
}