<?php

namespace Appacman\Model\Form;

use Core\Model\File;
use PDO;

class BravaImage extends Dynamic
{

    public function getListValue($langID = null): string
    {
        $sql    = '
            SELECT br.image, br.score, bl.text
            FROM brava_lang AS bl
            LEFT JOIN brava_review AS br ON br.id_brava = bl.id_brava AND bl.id_appacman_lang = 1
            WHERE bl.id_brava = :id
            ORDER BY br.last_visit DESC
            LIMIT 1
        ';
        $params = array(
            'id' => array('value' => $this->id, 'type' => PDO::PARAM_INT)
        );
        $items  = $this->mysql->query($sql, $params);
        if (count($items)) {
            $item  = $items[0];
            $score = $item['score'];
            if ($score > 0) {
                $file  = new File($item['image']);
                $img   = $file->getAbsolutePath('thumb');
                $class = 'bg-yellow';
                if ($score < 5) {
                    $class = 'bg-red';
                }
                if ($score >= 8) {
                    $class = 'bg-green';
                }
                if ($img) {
                    return "
                        <img src=\"$img\" class=\"media-object\" style='height: 100px'>
                        <small class=\"label $class\">$score</small>
                    ";
                }
            }
            return '<div style="padding: 5px; background: lemonchiffon">' . $item['text'] . '</div>';
        }
        return '';
    }

}
