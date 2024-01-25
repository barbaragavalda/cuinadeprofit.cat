<?php

namespace Web\Controller\Restaurant;

use Core\Utils\Config;
use Web\Model\Restaurant\FilteredList;

class Map extends Restaurant
{

    function search()
    {
        parent::search();

        $this->list = new FilteredList(null, 1, PHP_INT_MAX);

        $config = Config::getInstance();
        $this->assign('key', $config->get('maps-key'));

        $this->assign('translations', $this->translate());
        $this->assign('link', _('restaurants') . '/' . _('mapa'));
        $this->overrideMetadata(array('metatag_title' => _('Restaurantes')));
        $this->template = 'restaurants/map.twig';
    }

    protected function translate(): array
    {
        return $this->translate->translate(array('restaurants', 'mapa'));
    }

}