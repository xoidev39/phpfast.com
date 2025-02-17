<?php
namespace App\Controllers\Frontend;

use System\Libraries\Assets;
use System\Libraries\Render;

use App\Controllers\FrontendController;
use App\Models\TermsModel;
use App\Models\UtilsModel;
use App\Models\PostsModel;
use App\Models\PostrelModel;
use App\Libraries\Fastlang as Flang;
use System\Drivers\Cache\UriCache;

class HomeController extends FrontendController {
    protected $modelMovie;
    protected $modelMDirector;
    protected $assets;
    protected $cache;
    protected $termsModel;
    protected $postsModel;
    protected $postrelModel;
    protected $subpostsModel;
    protected $utilsModel;

    public function __construct()
    {
        $this->modelMovie = new PostsModel('movie');
        $this->modelMDirector = new PostsModel('director');
        $this->termsModel = new TermsModel();
        $this->utilsModel = new UtilsModel();
        $this->assets = new Assets();
        load_helpers(['images']);
        load_helpers(['frontend']);
        Flang::load('home', LANG);
        $this->assets->add('js', 'jfast.1.1.4.js', 'footer');
        $this->assets->add('js', 'js/home.js', 'header');
        $this->assets->add('js', 'main.js', 'footer');
        $this->assets->add('css', 'style.css', 'head');
        $this->assets->add('css', 'style.css', 'head');
        $this->data('assets_header', $this->assets->header('frontend'));
        $this->data('assets_footer', $this->assets->footer('frontend'));
        $header = Render::component('frontend/component/header');
        $footer = Render::component('frontend/component/footer');
        $this->data('header', $header);
        $this->data('footer', $footer);
        
        $this->cache = new UriCache(5, 'html');
        $this->cache->cacheLogin(true); //Van cho Caching cho du nguoi dung Login
        $this->cache->cacheMobile(true);
    }

    public function index() {
      
    }
}
