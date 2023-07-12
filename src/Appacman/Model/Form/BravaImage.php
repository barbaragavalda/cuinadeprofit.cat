<?php

namespace Appacman\Model\Form;

use Core\Model\File;

class BravaImage extends Dynamic
{

    public function getListValue($langID = null)
    {
        $sql    = '
            SELECT image, score
            FROM brava_review
            WHERE id_brava = :id
            ORDER BY `last_visit` DESC
            LIMIT 1
        ';
        $params = array(
            'id' => array('value' => $this->id, 'type' => \PDO::PARAM_INT)
        );
        $image  = $this->mysql->query($sql, $params);
        if (count($image)) {
            $file  = new File($image[0]['image']);
            $img   = $file->getAbsolutePath('thumb');
            $score = $image[0]['score'];
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
        return '';
    }

}
