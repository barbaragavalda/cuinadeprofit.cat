<?php

namespace Web\Model\Restaurant;

use Core\Model\Paginated;
use Core\Model\Utils\DateUtils;
use Core\Utils\Config;
use PDO;

class FilteredList extends Paginated
{

    private string $apiKey = '';

    public function __construct($page, $itemsPerPage = 12)
    {
        parent::__construct($page, $itemsPerPage, false);

        $config       = Config::getInstance();
        $this->apiKey = $config->get('maps-key');
    }

    public function initAll()
    {

        $where  = '';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT)
        );
        if (array_key_exists('query', $this->filters)) {
            $where           = 'WHERE (r.name LIKE :query OR r.address LIKE :query OR rl.text LIKE :query)';
            $params['query'] = array('value' => '%' . $this->filters['query'] . '%', 'type' => PDO::PARAM_STR);
        }

        $sql         = "
            SELECT r.name, r.address, r.latitude, r.longitude, r.last_visit, r.image, rl.text
            FROM restaurant AS r
            INNER JOIN restaurant_lang AS rl ON r.id_restaurant = rl.id_restaurant AND rl.id_appacman_lang = :lang
            $where
            ORDER BY r.last_visit DESC
        ";
        $this->items = $this->mysql->query($sql, $params);
    }

    public function getItemsPage(): array
    {
        $items = parent::getItemsPage();
        foreach ($items as &$restaurant) {
            $restaurant['last_visit'] = DateUtils::userDate($restaurant['last_visit']);
            $restaurant['link']       = 'https://www.google.com/maps/search/?api=1';
            $restaurant['link']       .= '&query=' . urlencode($restaurant['name'] . ' ' . $restaurant['address']);
            $restaurant['isOutside']  = true;

            $restaurant['image'] = $this->getFile($restaurant['image'], 'list');
            if (empty($restaurant['image'])) {
                $location            = $restaurant['latitude'] . ',' . $restaurant['longitude'];
                $restaurant['image'] = "https://maps.googleapis.com/maps/api/staticmap?center=$location&zoom=17&size=400x400&maptype=roadmap&markers=color:red%7C$location&key=$this->apiKey";
            }
        }
        return $items;
    }

}