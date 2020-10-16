<?php

namespace Web\Controller\Recipe\Search;

use Web\Model\Recipe\Util;

class Category extends Search
{

    protected function search($uri)
    {
        $title    = null;
        $util     = new Util();
        $category = $util->getCategory($uri);
        if (count($category)) {
            $this->list->setFilters(array('category' => $category['id']));
            $title = $category['name'];
        }

        if ($title != null) {
            $this->assign('title', _('Categoría') . ': ' . $title);
            return true;
        }
        $this->assign('title', _('Categoría'));
        return false;
    }

}