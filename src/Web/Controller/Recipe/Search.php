<?php

namespace Web\Controller\Recipe;

use Web\Controller\Controller;
use Web\Model\Recipe\FilteredList;
use Web\Model\Recipe\Filter;

class Search extends Controller
{

    /**
     * @var int current page
     */
    private $page = 1;

    /**
     * @var array uri filters
     */
    private $filters = array();

    /**
     * @var \Web\Model\Recipe\Filter
     */
    private $filter = null;

    /**
     * @var \Web\Model\Recipe\FilteredList
     */
    protected $list = null;

    public function run()
    {
        $this->filter = new Filter();
        $this->filter();

        $this->list = new FilteredList($this->filters['page']);
        $this->list->setFilters($this->filters);
        $this->list->initAll();
        $this->assign('items', $this->list->getItemsPage());
        $this->assign('pagination', $this->list->paginate());
        $this->assign('link', _('recetas'));
        $this->assign('filters', $this->filters);

        $this->assign('difficulties', $this->filter->getDifficulty());
        $this->assign('times', $this->filter->getTime());
        $this->assign('categories', $this->filter->getCategory());
        $this->assign('tags', $this->filter->getTag());
        $this->assign('ingredients', $this->filter->getIngredient());
        $this->template('recipe/list.twig');
    }

    /**
     *
     */
    private function filter()
    {
        $params = $this->checkParams();

        $this->filters = array('page' => 1);
        foreach ($params as $param) {
            if (is_numeric($param)) {
                $this->filters['page'] = $param;
            } else {
                $explode = explode('&', $param);
                foreach ($explode as $value) {
                    $this->checkParam($value);
                }
            }
        }
    }

    private function checkParams()
    {
        $params = array();

        for ($i = 1; $i < 7; $i++) {
            $param = $this->getParam('param' . $i);
            if ($param !== false) {
                $params[] = $param;
            }
        }

        return $params;
    }

    /**
     * load current page or filter from URI
     *
     * @param string $value
     */
    private function checkParam($value)
    {
        // difficulty
        $difficulty = $this->filter->getDifficulty($value);
        if (count($difficulty)) {
            $this->addFilter(Filter::DIFFICULTY, $difficulty['id']);
        }

        // time
        $time = $this->filter->getTime($value);
        if (count($time)) {
            $this->filters[ Filter::TIME ] = $time;
        }

        // category
        $category = $this->filter->getCategory($value);
        if (count($category)) {
            $this->addFilter(Filter::CATEGORY, $category['id']);
        }

        // ingredient
        $ingredient = $this->filter->getIngredient($value);
        if (count($ingredient)) {
            $this->addFilter(Filter::INGREDIENT, $ingredient['id']);
        }

        // tag
        $tag = $this->filter->getTag($value);
        if (count($tag)) {
            $this->addFilter(Filter::TAG, $tag['id']);
        }
    }

    private function addFilter($key, $value)
    {
        if (!array_key_exists($key, $this->filters)) {
            $this->filters[ $key ] = array();
        }
        $this->filters[ $key ][] = $value;
    }

}