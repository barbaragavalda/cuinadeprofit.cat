<?php

namespace Import\Model;

use Core\Model\Model;
use Core\Model\Utils\Curl;
use Core\Model\Utils\Mail;
use Core\Model\Utils\StringUtils;
use Core\Utils\Config;
use PDO;

class Place extends Model
{

    private array $closed = array();

    public function init()
    {
        $sql   = '
            SELECT id_brava, id_brava_type, name, latitude, longitude
            FROM brava
            WHERE is_closed <> 1
            ORDER BY name ASC
        ';
        $items = $this->mysql->query($sql);
        $items = array_slice($items, 0, 100);
//        $items = array_slice($items, 100, 100);
//        $items = array_slice($items, 200, 100);
//        $items = array_slice($items, 300, 100);
//        $items = array_slice($items, 400, 100);
//        $items = array_slice($items, 500, 100);

        $this->closed = array();
        foreach ($items as $item) {
            $this->check($item);
        }

        if (count($this->closed)) {
            $mail = new Mail();
            $result = $mail->send(
                null,
                array(array("email" => "barbaragavalda@gmail.com", "name" => "Bàrbara")),
                "Braves tancades?",
                '<pre>'.print_r($this->closed, true). '</pre>'
            );
        }
        echo '<pre>' . print_r($this->closed, true) . '</pre>';
        exit;
    }

    public function check($item)
    {
        $config = Config::getInstance();
        $key    = $config->get('places-key');

        $name      = urlencode($item['name']);
        $latitude  = $item['latitude'];
        $longitude = $item['longitude'];
        $params    = "fields=name,geometry,business_status&locationbias=circle:100@$latitude,$longitude&input=$name&inputtype=textquery&key=$key";

        $result     = file_get_contents("https://maps.googleapis.com/maps/api/place/findplacefromtext/json?$params");
        $candidates = json_decode($result, true);

        if ($candidates['status'] == 'OK') {
            switch (count($candidates['candidates'])) {
                case 0:
                    echo "<h1 style='color: red'>$name</h1>";
                    break;
                case 1:
                    $this->checkCandidate($candidates['candidates'][0], $item);
                    break;
                default:
                    $nearest         = null;
                    $nearestDistance = PHP_INT_MAX;
                    for ($i = 0; $i < count($candidates['candidates']); $i++) {
                        $location = $candidates['candidates'][ $i ]['geometry']['location'];
                        $distance = $this->distance($latitude, $longitude, $location['lat'], $location['lng']);
                        if ($distance < $nearestDistance) {
                            $nearest         = $i;
                            $nearestDistance = $distance;
                        }
                    }
                    if ($nearest !== null) {
                        echo "<h1 style='color: orange'>$name ($latitude,$longitude)</h1>";
                        echo '<pre>' . print_r($candidates['candidates'][ $nearest ], true) . '</pre>';
                        $this->checkCandidate($candidates['candidates'][ $nearest ], $item);
                    }
                    break;
            }
        } else {
            echo "<h1 style='color: red'>$name (Status:" . $candidates['status'] . ")</h1>";
        }
    }

    private function checkCandidate($candidate, $item)
    {
        if ($candidate['business_status'] == 'CLOSED_PERMANENTLY') {
            // closed
            $this->closed[] = $item;
            echo "<h1 style='color: red'>" . $item['name'] . " (CLOSED_PERMANENTLY)</h1>";
        }else{
//            echo "<h1 style='color: green'>" . $item['name'] . "</h1>";
        }
    }

    private static function distance(
        $latitudeFrom,
        $longitudeFrom,
        $latitudeTo,
        $longitudeTo,
        $earthRadius = 6371000
    ) {
        // convert from degrees to radians
        $latFrom = deg2rad($latitudeFrom);
        $lonFrom = deg2rad($longitudeFrom);
        $latTo   = deg2rad($latitudeTo);
        $lonTo   = deg2rad($longitudeTo);

        $lonDelta = $lonTo - $lonFrom;
        $a        = pow(cos($latTo) * sin($lonDelta), 2) + pow(
                cos($latFrom) * sin($latTo) - sin($latFrom) * cos($latTo) * cos($lonDelta),
                2
            );
        $b        = sin($latFrom) * sin($latTo) + cos($latFrom) * cos($latTo) * cos($lonDelta);

        $angle = atan2(sqrt($a), $b);
        return $angle * $earthRadius;
    }

}