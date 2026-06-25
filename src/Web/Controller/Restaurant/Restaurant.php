<?php

namespace Web\Controller\Restaurant;

use Web\Controller\Search;

abstract class Restaurant extends Search
{

    function search(): void
    {
        $this->assign('menu', 'restaurants');
        $this->overrideMetadata(array('metatag_title' => _('Restaurantes')));
        $this->assign('link', _('restaurants'));
    }

}