<?php

namespace Import\Model;

use Core\Model\Model;
use Core\Model\Utils\StringUtils;
use PDO;
use SimpleXMLElement;

class Braves extends Model
{

    private SimpleXMLElement|false $xml;

    public function __construct()
    {
        parent::__construct();

        $this->mysql->query('TRUNCATE TABLE brava');
        $this->mysql->query('TRUNCATE TABLE brava_lang');
        $this->mysql->query('TRUNCATE TABLE brava_review');
        $this->mysql->query('TRUNCATE TABLE brava_review_lang');

        $file              = file_get_contents(DIR_ROOT . 'public/static/import/Patates-braves.kml');
        $invalidCharacters = '/[^\x9\xa\x20-\xD7FF\xE000-\xFFFD]/';
        $file              = preg_replace($invalidCharacters, '', $file);

        $this->xml = simplexml_load_string($file, 'SimpleXMLElement', LIBXML_NOCDATA);
    }

    public function parse(): void
    {
        foreach ($this->xml->Document->Folder as $folder) {
            $typeID = $this->getType((string) $folder->name);
            foreach ($folder->Placemark as $placemark) {
                $latitude    = $longitude = 0;
                $latLang     = trim((string) $placemark->Point->coordinates);
                $coordinates = array_filter(explode(',', $latLang));
                if (count($coordinates) >= 2) {
                    $latitude  = trim($coordinates[0]);
                    $longitude = trim($coordinates[1]);
                }

                $this->insert(
                    $typeID,
                    (string) $placemark->name,
                    '',
                    $latitude,
                    $longitude,
                    (string) $placemark->description
                );
            }
        }
    }

    private function insert($typeID, $name, $address, $latitude, $longitude, $text): bool
    {
        $this->mysql->beginTransaction();

        if ($this->insertRestaurant($typeID, $name, $address, $latitude, $longitude)) {
            if ($this->insertRestaurantLang($text)) {
                if ($typeID == 3) {
                    $info = $this->insertReview($text);
                    if (count($info) && $this->insertReviewLang($info['id'], $info['text'])) {
                        $this->mysql->commit();
                        return true;
                    }
                } else {
                    $this->mysql->commit();
                    return true;
                }
            }
        }

        r('ERROR', $name);
        $this->mysql->rollBack();
        return false;
    }

    private function insertRestaurant($typeID, $name, $address, $latitude, $longitude): bool
    {
        $this->id = $this->mysql->getMaxId('brava');
        $sql      = '
            INSERT INTO brava
            SET id_brava = :id, id_brava_type = :type, 
                name = :name, address = :address, latitude = :latitude, longitude = :longitude
        ';
        $params   = array(
            'id'        => array('value' => $this->id, 'type' => PDO::PARAM_INT),
            'type'      => array('value' => $typeID, 'type' => PDO::PARAM_INT),
            'name'      => array('value' => $name, 'type' => PDO::PARAM_STR),
            'address'   => array('value' => $address, 'type' => PDO::PARAM_STR),
            'latitude'  => array('value' => $latitude, 'type' => PDO::PARAM_STR),
            'longitude' => array('value' => $longitude, 'type' => PDO::PARAM_STR)
        );
        $this->mysql->query($sql, $params);
        return $this->mysql->getState();
    }

    private function insertRestaurantLang($text): bool
    {
        $languages = array(1, 2);
        foreach ($languages as $lang) {
            $sql    = '
                    INSERT INTO brava_lang
                    SET id_brava = :id, id_appacman_lang = :lang, text = :text
                ';
            $params = array(
                'id'   => array('value' => $this->id, 'type' => PDO::PARAM_INT),
                'lang' => array('value' => $lang, 'type' => PDO::PARAM_INT)
            );
            if ($lang == 2) {
                $text = '';
            }
            $params['text'] = array('value' => $text, 'type' => PDO::PARAM_STR);
            $this->mysql->query($sql, $params);
            if (!$this->mysql->getState()) {
                return false;
            }
        }
        return true;
    }

    private function insertReview($text): array
    {
        preg_match_all('/Preu:(.*) Quantitat:(.*) Patates:(.*) Salsa:(.*) Nota final:(.*)/', $text, $matches);
        $price = $amount = $potatoes = $sauce = $score = 0;
        if (count($matches) == 6) {
            if (!StringUtils::startsWidth(trim($matches[1][0]), '.')) {
                $price = $this->checkNumber($matches[1][0]);
            }
            $amount   = $this->checkNumber($matches[2][0]);
            $potatoes = $this->checkNumber($matches[3][0]);
            $sauce    = $this->checkNumber($matches[4][0]);
            if (strpos($matches[5][0], '<br>')) {
                $text = explode('<br>', $matches[5][0]);
                if (count($text) > 0) {
                    array_shift($text);
                    $text = implode(' ', $text);
                }
            }
        }

        $id     = $this->mysql->getMaxId('brava_review');
        $sql    = '
            INSERT INTO brava_review
            SET id_brava_review = :id, id_brava = :brava,
                price = :price, amount = :amount, potatoes = :potatoes, sauce = :sauce, score = :score
        ';
        $params = array(
            'id'       => array('value' => $id, 'type' => PDO::PARAM_INT),
            'brava'    => array('value' => $this->id, 'type' => PDO::PARAM_INT),
            'price'    => array('value' => $price, 'type' => PDO::PARAM_STR),
            'amount'   => array('value' => $amount, 'type' => PDO::PARAM_STR),
            'potatoes' => array('value' => $potatoes, 'type' => PDO::PARAM_STR),
            'sauce'    => array('value' => $sauce, 'type' => PDO::PARAM_STR),
            'score'    => array('value' => $score, 'type' => PDO::PARAM_STR)
        );
        $this->mysql->query($sql, $params);
        if ($this->mysql->getState()) {
            return array(
                'id'   => $id,
                'text' => $text,
            );
        }
        return array();
    }

    private function insertReviewLang($id, $text): bool
    {
        $languages = array(1, 2);
        foreach ($languages as $lang) {
            $sql    = '
                INSERT INTO brava_review_lang
                SET id_brava_review = :id, id_appacman_lang = :lang, review = :text
            ';
            $params = array(
                'id'   => array('value' => $id, 'type' => PDO::PARAM_INT),
                'lang' => array('value' => $lang, 'type' => PDO::PARAM_INT)
            );
            if ($lang == 2) {
                $text = '';
            }
            $params['text'] = array('value' => $text, 'type' => PDO::PARAM_STR);
            $this->mysql->query($sql, $params);
            if (!$this->mysql->getState()) {
                return false;
            }
        }
        return true;
    }

    private function getType($name): ?int
    {
        $typeID = null;
        switch ($name) {
            case 'Restaurants':
                $typeID = 2;
                break;
            case 'Bars':
            case 'No BCN':
                $typeID = 1;
                break;
            case 'OK':
                $typeID = 3;
                break;
            case 'OK Fora concurs':
                $typeID = 4;
                break;
            case 'OK Tancats':
                $typeID = 5;
                break;
        }
        return $typeID;
    }

    private function checkNumber($number): string
    {
        $number  = trim($number);
        $explode = explode('.', $number);
        if (count($explode) > 0) {
            $number = $explode[0];
        }
        $number = trim($number);
        $number = str_replace(' ( vermut 1908 a la terrassa de dalt de tot: mola :) )', '', $number);
        $number = str_replace('gratis', '', $number);
        $number = str_replace('€', '', $number);
        $number = str_replace('$', '', $number);
        $number = str_replace('?', '', $number);
        $number = str_replace(' racio', '', $number);
        $number = str_replace(', pel preu', '', $number);
        $number = str_replace(',', '.', $number);
        if (empty($number)) {
            return 0;
        }
        return $number;
    }

}