<?php
namespace App\Controllers;

use System\Core\BaseController;
use System\Libraries\Render;
use System\Libraries\Assets;

/**
 * AppController
 * 
 * Controller gốc cho các controller "backend" khác.
 * Tự động load helper, khởi tạo Assets, sidebar, header, footer...
 */
class BackendController extends BaseController
{
    /**
     * Đối tượng quản lý assets
     * @var Assets
     */
    protected $assets;
    protected $post_lang;

    /**
     * Constructor
     * - Load helper
     * - Khởi tạo Assets với CSS/JS mặc định
     * - Render trước các phần layout (header, footer, sidebar)
     */
    public function __construct()
    {
        // Gọi constructor của BaseController (để duy trì chức năng chung)
        parent::__construct();
        
        // Load helper 'backend'
        load_helpers(['backend']);
        
        // Khởi tạo quản lý asset
        $this->assets = new Assets();
        
        // Add CSS/JS mặc định cho trang backend
        $this->assets->add('css', 'css/style.css', 'head');
        $this->assets->add('js', 'js/jfast.1.1.4.js', 'footer');
        $this->assets->add('js', 'js/feather.min.js', 'footer');
        $this->assets->add('js', 'js/main.js', 'footer');

        // Lấy các component chung (sidebar, header, footer)
        $sidebar = Render::component('backend/component/main_sidebar');
        $header  = Render::component('backend/component/header');
        $footer  = Render::component('backend/component/footer');

        // Đưa vào $this->data để truyền cho view
        $this->data('sidebar', $sidebar);
        $this->data('header',  $header);
        $this->data('footer',  $footer);

        $this->post_lang = S_GET('post_lang') ?? LANG;
        
    }
}