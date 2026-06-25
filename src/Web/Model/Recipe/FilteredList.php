<?php

namespace Web\Model\Recipe;

use Core\Model\Paginated;
use Core\Model\Utils\DateUtils;
use Core\Utils\Config;
use Core\Utils\Session;
use DateTime;
use IntlDateFormatter;
use PDO;

class FilteredList extends Paginated
{

    public function __construct($page, $itemsPerPage = 14, $langID = null)
    {
        parent::__construct($page, $itemsPerPage, false);

        if ($langID != null) {
            $this->langID = $langID;
        }
    }

    public function initAll(): void
    {
        $where     = array();
        $innerJoin = '';
        $having    = '';
        $limit     = '';
        $params    = array(
            'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT)
        );

        if (array_key_exists('query', $this->filters)) {
            $where[]         = 'rl.name LIKE :query';
            $params['query'] = array('value' => '%' . $this->filters['query'] . '%', 'type' => PDO::PARAM_STR);
        }
        if (array_key_exists('category', $this->filters)) {
            $innerJoin .= '
                INNER JOIN recipe_ingredient AS ri ON r.id_recipe = ri.id_recipe
                INNER JOIN ingredient AS i ON i.id_ingredient = ri.id_ingredient
                INNER JOIN ingredient_category AS ic ON i.id_ingredient_category = ic.id_ingredient_category 
                    AND ic.id_ingredient_category IN(' . implode(', "', $this->filters['category']) . '")
            ';
        }
        if (array_key_exists('time', $this->filters)) {
            $having              = 'HAVING time BETWEEN :timeStart AND :timeEnd';
            $params['timeStart'] = array('value' => $this->filters['time'][0], 'type' => PDO::PARAM_INT);
            $params['timeEnd']   = array('value' => $this->filters['time'][1], 'type' => PDO::PARAM_INT);
        }
        if (array_key_exists('difficulty', $this->filters)) {
            $where[] = 'r.id_difficulty IN(' . implode(', ', $this->filters['difficulty']) . ')';
        }
        if (array_key_exists('ingredient', $this->filters)) {
            $innerJoin .= '
                INNER JOIN recipe_ingredient AS ri ON r.id_recipe = ri.id_recipe
                INNER JOIN ingredient AS i ON i.id_ingredient = ri.id_ingredient 
                    AND i.id_ingredient IN(' . implode(', ', $this->filters['ingredient']) . ')
            ';
        }
        if (array_key_exists('tag', $this->filters)) {
            $innerJoin .= '
                INNER JOIN recipe_tag AS rt ON r.id_recipe = rt.id_recipe
                INNER JOIN tag AS t ON t.id_tag = rt.id_tag 
                    AND t.id_tag IN(' . implode(', ', $this->filters['tag']) . ')
            ';
        }
        if (array_key_exists('new', $this->filters)) {
            $limit = 'LIMIT ' . $this->itemsPerPage;
        }
        if (array_key_exists('highlighted', $this->filters)) {
            $where[] = 'r.is_highlighted = 1';
            $limit   = "LIMIT $this->itemsPerPage";
        }
        if (array_key_exists('not_in', $this->filters) && count($this->filters['not_in'])) {
            $where[] = 'r.id_recipe NOT IN(' . implode(', ', $this->filters['not_in']) . ')';
            $limit   = "LIMIT $this->itemsPerPage";
        }

        $session = Session::getInstance();
        if ($session->get('user_id') == null) {
            $where[] = 'r.is_visible = 1 AND r.is_exclusive = 0';
        }

        $sql         = "
            SELECT DISTINCT r.id_recipe, r.prep_time, r.cook_time, r.rest_time, r.image, r.created, r.is_visible, r.is_exclusive,
                (IFNULL(prep_time, 0) + IFNULL(cook_time, 0)) AS time,
                rl.name, rl.uri, rl.description,
                dl.id_difficulty, dl.name AS difficulty, dl.uri AS difficultyURI
            FROM recipe AS r
            INNER JOIN recipe_lang AS rl ON r.id_recipe = rl.id_recipe AND rl.id_appacman_lang = :lang
            INNER JOIN difficulty_lang AS dl ON r.id_difficulty = dl.id_difficulty AND dl.id_appacman_lang = :lang
            $innerJoin
            " . $this->getWhere($where) . "
            $having
            ORDER BY r.created DESC, rl.name ASC
            $limit
        ";
        $this->items = $this->mysql->query($sql, $params);
    }

    public function getItemsPage($prepare = true): array
    {
        $recipes = parent::getItemsPage();

        if ($prepare) {
            $config = Config::getInstance();
            $domain = $config->getDomain();
            foreach ($recipes as &$recipe) {
                $recipeModel = new Detail();
                $recipeModel->setID($recipe['id_recipe']);
                $recipe['image']     = $this->getFile($recipe['image'], 'list');
                $recipe['time']      = Detail::formatTime($recipe['time']);
                $recipe['rest_time'] = Detail::formatTime($recipe['rest_time']);
                $recipe['tags']      = $recipeModel->getTags(false);
                $recipe['created']   = self::formatDate($recipe['created']);

                $recipe['link'] = $domain . _('recepta') . '/' . $recipe['uri'];
            }
        } else {
            foreach ($recipes as &$recipe) {
                $updated           = DateTime::createFromFormat(DateUtils::FORMAT_TIMESTAMP_DB, $recipe['created']);
                $recipe['created'] = $updated->format('Y-m-d');
            }
        }
        return $recipes;
    }

    public static function formatDate($created): string
    {
        $session = Session::getInstance();
        $date    = DateTime::createFromFormat(DateUtils::FORMAT_TIMESTAMP_DB, $created);
        return IntlDateFormatter::formatObject($date, 'eeee d MMMM Y', $session->get('lang_culture'));
    }

}