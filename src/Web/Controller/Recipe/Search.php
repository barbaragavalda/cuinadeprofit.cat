<?php

namespace Web\Controller\Recipe;

use Web\Model\Recipe\FilteredList;

class Search extends \Web\Controller\Search
{

    public function run()
    {
        parent::run();

        $list = new FilteredList($this->filters['page']);
        $list->setFilters($this->filters);
        $list->initAll();
        $this->assign('items', $list->getItemsPage());
        $this->assign('pagination', $list->paginate());
        $this->assign('link', _('receptes'));
        $this->assign('extraLink', $this->getExtraLink());
        $this->assign('filters', $this->filters);

        $this->assign('difficulties', $this->filter->getDifficulty());
        $this->assign('times', $this->filter->getTime());
        $this->assign('categories', $this->filter->getCategory());
        $this->assign('tags', $this->filter->getTag());
        $this->assign('ingredients', $this->filter->getIngredient());

        $this->assign('menu', 'recipes');
        $this->template('recipe/list.twig');
    }

    private function getExtraLink(): string
    {
        $params = array();
        $query  = '';
        foreach ($this->params as $key => $value) {
            if ($key == 'q') {
                $query = '?q=' . $value;
            } else {
                if (!is_numeric($value)) {
                    $params[] = $value;
                }
            }
        }
        $extraLink = implode('/', $params) . $query;
        if (!empty($extraLink)) {
            $extraLink = '/' . $extraLink;
        }
        return $extraLink;
    }

}