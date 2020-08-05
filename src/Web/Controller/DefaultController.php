<?php

namespace Web\Controller;

use Core\Controller\Controller;

class DefaultController extends Controller {

    public function build(){
        $this->defaultMetatags();
        $this->template('404.twig');
    }

    private function defaultMetatags(){
        $this->assign('canonical', 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']);
        $this->assign('webName', 'Cuina de Profit');
        $this->assign('metatagTitle', 'Cuina de Profit');
        $this->assign('metatagKeywords', '');
        $this->assign('metatagDescription', '');
        $this->assign('metatagImage', array(
            'image' => $this->staticDomain . 'img/fb.jpg',
            'width' => 1200,
            'height' => 630
        ));
    }

}