<?php
namespace App\Controllers;

use System\Core\BaseController;
use System\Libraries\Render;
use System\Libraries\Assets;

class FrontendController extends BaseController
{
    protected $assets;

    public function __construct()
    {
        parent::__construct();
        load_helpers(['frontend']);
        
        $this->assets = new Assets();
        // Em dung file css js nao cho frontend thi e goi vo. Vd jfast.
        // $this->assets->add('css', 'css/style.css', 'head');
        $this->assets->add('js', 'js/jfast.1.1.4.js', 'footer');
        // $this->assets->add('js', 'js/feather.min.js', 'footer');
        // $this->assets->add('js', 'js/main.js', 'footer');

        $header  = Render::component('backend/component/header');
        $footer  = Render::component('backend/component/footer');
        $this->data('header',  $header);
        $this->data('footer',  $footer);
    }
}