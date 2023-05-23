<?php

namespace Web\Model\Restaurant;

use Core\Model\Paginated;
use Core\Model\Utils\DateUtils;

class FilteredList extends Paginated
{

    public function get(): array
    {
    }

    public function initAll()
    {
        $sql         = '
            SELECT r.name, r.address, r.latitude, r.longitude, r.last_visit, rl.text
            FROM restaurant AS r
            INNER JOIN restaurant_lang AS rl ON r.id_restaurant = rl.id_restaurant AND rl.id_appacman_lang = :lang
        ';
        $params      = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT)
        );
        $restaurants = $this->mysql->query($sql, $params);
        foreach ($restaurants as &$restaurant) {
            $restaurant['last_visit'] = DateUtils::userDate($restaurant['last_visit']);
        }
        return $restaurants;
    }
}