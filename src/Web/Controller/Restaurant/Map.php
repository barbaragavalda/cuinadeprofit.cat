<?php

namespace Web\Controller\Restaurant;

use Web\Controller\Controller;
use Web\Model\Restaurant\FilteredList;

class Map extends Controller
{

    public function run()
    {
        $model = new FilteredList();
        $this->assign('restaurants', $model->get());
        $this->assign('menu', 'restaurants');
        $this->template('restaurant/map.twig');
    }

}