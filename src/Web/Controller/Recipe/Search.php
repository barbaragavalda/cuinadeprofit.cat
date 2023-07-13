<?php

namespace Web\Controller\Recipe;

use Web\Model\Recipe\FilteredList;

class Search extends \Web\Controller\Search
{

    function search()
    {
        $this->list = new FilteredList($this->filters['page']);
        $this->assign('link', _('receptes'));

        $this->filter->setFilters($this->filters);
        $this->assign('difficulties', $this->filter->getDifficulty());
        $this->assign('times', $this->filter->getTime());
        $this->assign('categories', $this->filter->getCategory());
        $this->assign('tags', $this->filter->getTag());
        $this->assign('ingredients', $this->filter->getIngredient());

        $this->assign('menu', 'recipes');
        $this->assign('type', 'recipe');
        $this->assign('aspectRatio', '1/1');
        $this->assign('noResults', "No hem trobat ningún resultat. Prova sort amb una %srecepta aleatòria%s.");
        $this->assign('noResultsLink', _('recepta') . '/' . _('aleatoria'));
    }
}