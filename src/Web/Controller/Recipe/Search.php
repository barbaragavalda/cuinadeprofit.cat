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

        $this->list = new FilteredList($this->page);
        $this->list->setFilters($this->filters);
        $this->list->initAll();
        $this->assign('items', $this->list->getItemsPage());
        $this->assign('pagination', $this->list->paginate());
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
        if( isset($_POST['filter']) ){

        }else{
            $this->checkParam('param1');
            $this->checkParam('param2');
        }
    }

    /**
     * load current page or filter from URI
     * @param string $paramName
     */
    private function checkParam($paramName)
    {
        $param = $this->getParam($paramName);
        if (is_numeric($param)) {
            $this->page = $param;
        } else {
            if (!empty($param)) {
                // difficulty
                $difficulty = $this->filter->getDifficulty($param);
                if (count($difficulty)) {
                    $this->addFilter(Filter::DIFFICULTY, $difficulty['id']);
                }

                // category
                $category = $this->filter->getCategory($param);
                if (count($category)) {
                    $this->addFilter(Filter::CATEGORY, $category['id']);
                }

                // ingredient
                $ingredient = $this->filter->getIngredient($param);
                if (count($ingredient)) {
                    $this->addFilter(Filter::INGREDIENT, $ingredient['id']);
                }

                // tag
                $tag = $this->filter->getTag($param);
                if (count($tag)) {
                    $this->addFilter(Filter::TAG, $tag['id']);
                }
            }
        }
    }

    private function addFilter($key, $value){
        if( !array_key_exists($key, $this->filters) ){
            $this->filters[$key] = array();
        }
        $this->filters[$key][] = $value;
    }

}