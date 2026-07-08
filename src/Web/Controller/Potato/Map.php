<?php

namespace Web\Controller\Potato;

use Core\Routing\Attribute\Route;
use Core\Utils\Config;
use Web\Controller\Search;
use Web\Model\Potato\FilteredList;

// more specific "pro" variant must come first: attributes are read in
// declaration order and the router returns the first match, and
// "/braves/{param1?}/..." below would otherwise also match "/braves/pro/..."
// (param1 = "pro")
#[Route('/braves/pro/{param1?}/{param2?}/{param3?}/{param4?}/{param5?}', name: 'potato.map.pro')]
#[Route('/braves/{param1?}/{param2?}/{param3?}/{param4?}', name: 'potato.map')]
class Map extends Search
{

    function search(): void
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
            $this->assign('toDo', $this->list->getToDo());
        }
        $this->assign('prevent_closed', $this->filter->getPreventClosed());
        $this->assign('rates', $this->filter->getRates());
        $this->assign('years', $this->filter->getPotatoYears());
        $this->assign('local_type', $this->filter->getLocalType());
        $this->assign('link', $link);

        $this->assign('menu', 'potatoes');
        $this->assign('translations', $this->translate());
        $this->overrideMetadata(array('metatag_title' => _('Braves')));
        $this->template = 'potatoes/map.twig';
    }

    protected function filter(): void
    {
        parent::filter();
        $this->filters['pro'] = in_array('pro', $this->parts);
    }

    protected function translate(): array
    {
        return $this->translate->translate(array('braves'));
    }

}