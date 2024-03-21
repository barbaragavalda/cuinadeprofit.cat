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

        $link = _('braves');
        if (in_array('pro', $this->parts)) {
            $this->assign('isPro', true);
            $link .= '/pro';
            $this->assign('brava_type', $this->filter->getPotatoTypes());
        }
        $this->assign('rates', $this->filter->getRates());
        $this->assign('years', $this->filter->getPotatoYears());
        $this->assign('local_type', $this->filter->getLocalType());
        $this->assign('link', $link);

        $this->assign('menu', 'potatoes');
        $this->assign('translations', $this->translate());
        $this->overrideMetadata(array('metatag_title' => _('Braves')));
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