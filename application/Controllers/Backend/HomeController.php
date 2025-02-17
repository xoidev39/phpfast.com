<?php
//Controller tạo nháp đừng quan tâm đến nó, bỏ qua
namespace App\Controllers\Backend;

use App\Controllers\BackendController;
use System\Libraries\Render;
use App\Libraries\Fastlang as Flang;
use System\Libraries\Assets;

class HomeController extends BackendController {
    protected $assets;

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Hiển thị danh sách các bộ phim
     */
    public function index() {
        // Gọi hàm render và truyền vào layout và view
        $this->data('title', Flang::_e('tile_languages'));
        $this->data('assets_header', $this->assets->header('backend'));
        $this->data('assets_footer', $this->assets->footer('backend'));
        echo $this->render('backend', 'backend/home/index');
    }
}
