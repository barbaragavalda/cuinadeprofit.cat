<?php

namespace Web\Model;

use Core\Model\Model;
use Core\Utils\Language;
use PDO;

class Translate extends Model
{

    private Language $language;

    private array $languages = array('ca', 'es');

    public function __construct()
    {
        parent::__construct();
        $this->language = new Language();
    }

    public function translate($strings, $table = null, $id = null): array
    {
        $translations = array();
        $extra        = array();
        if ($table != null) {
            $extra = $this->translateUri($table, $id);
        }
        foreach ($this->languages as $culture) {
            $this->changeLanguage($culture);

            $uri = array();
            foreach ($strings as $string){
                $uri[] = _($string);
            }
            if (array_key_exists($culture, $extra)) {
                $uri[] = $extra[ $culture ];
            }
            $translations[ $culture ] = implode('/', $uri);
        }
        $this->reInitLanguage();
        return $translations;
    }

    private function translateUri($table, $id): array
    {
        $sql          = "
            SELECT t.uri, l.culture
            FROM {$table}_lang AS t
            INNER JOIN appacman_lang AS l ON t.id_appacman_lang = l.id_appacman_lang
            WHERE id_$table = :id
        ";
        $params       = array(
            'id' => array('value' => $id, 'type' => PDO::PARAM_INT)
        );
        $translations = $this->mysql->query($sql, $params);
        if (count($translations)) {
            $uris = array();
            foreach ($translations as $translation) {
                $uris[ $translation['culture'] ] = $translation['uri'];
            }
            return $uris;
        }
        return array();
    }

    private function reInitLanguage(): void
    {
        $culture = $this->language->getCulture($this->langID);
        $this->changeLanguage($culture);
    }

    private function changeLanguage($culture): void
    {
        $locale = $this->language->getLocale($culture);
        $this->language->setCulture($locale);
        $this->language->initGettext();
    }

}