<?php

namespace Web\Controller\Recipe\Search;

use Web\Model\Recipe\Util;

class Ingredient extends Search
{

    protected function search($uri)
    {
        $title      = null;
        $util       = new Util();
        $ingredient = $util->getIngredient($uri);
        if (count($ingredient)) {
            $this->list->setFilters(array('ingredient' => $ingredient['id']));
            $title = $ingredient['name'];
        }

        if ($title != null) {
            $this->assign('title', _('Ingrediente') . ': ' . $title);
            return true;
        }
        $this->assign('title', _('Ingrediente'));
        return false;
    }

}