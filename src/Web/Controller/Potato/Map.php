<?php

namespace Web\Controller\Potato;

use Core\Utils\Config;
use Web\Controller\Search;
use Web\Model\Potato\FilteredList;

class Map extends Search
{

    function search()
    {
        $this->list = new FilteredList(1, PHP_INT_MAX);
        $this->assign('stats', $this->list->getStats());

        $config = Config::getInstance();
        $this->assign('key', $config->get('maps-key'));

        $this->assign('menu', 'potatoes');

        $link = _('braves');
        if (in_array('pro', $this->parts)) {
            $this->assign('isPro', true);
            $link .= '/pro';
        }
        $this->assign('link', $link);

        $this->assign('translations', $this->translate());
        $this->template = 'potatoes/map.twig';
    }

    protected function filter()
    {
        parent::filter();
        $this->filters['pro'] = in_array('pro', $this->parts);
    }

    protected function translate(): array
    {
        return $this->translate->translate(array('braves'));
    }

}