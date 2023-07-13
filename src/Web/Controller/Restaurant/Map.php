<?php

namespace Web\Controller\Restaurant;

use Web\Model\Restaurant\FilteredList;

class Map extends \Web\Controller\Search
{

    function search()
    {
        $this->list = new FilteredList(1, PHP_INT_MAX);

        $this->assign('menu', 'restaurants');
        $this->assign('translations', $this->translate());
        $this->template = 'restaurant/map.twig';
    }

    protected function translate(): array
    {
        return $this->translate->translate(array('restaurants', 'mapa'));
    }

}