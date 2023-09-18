<?php

namespace Web\Controller\Potato;

use Web\Controller\Search;
use Web\Model\Potato\FilteredList;

class Map extends Search
{

    function search()
    {
        $this->list = new FilteredList(1, PHP_INT_MAX);
        $this->assign('stats', $this->list->getStats());

        /*
        $config = Config::getInstance();
        $this->assign('key', $config->get('maps-key'));
        */

        $this->assign('menu', 'potatoes');
        $this->assign('translations', $this->translate());
        $this->template = 'potato/map.twig';
    }

    protected function translate(): array
    {
        return $this->translate->translate(array('braves'));
    }

}