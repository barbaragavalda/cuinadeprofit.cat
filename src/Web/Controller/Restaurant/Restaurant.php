<?php

namespace Web\Controller\Restaurant;

use Web\Controller\Search;

abstract class Restaurant extends Search
{

    function search()
    {
        $this->assign('menu', 'restaurants');
        $this->assign('link', _('restaurants'));
    }

}