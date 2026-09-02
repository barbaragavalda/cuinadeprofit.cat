<?php

namespace Appacman\Model\Form;

use Core\Model\File;

class BravaImage extends Dynamic
{

    private static ?array $latestReviews = null;

    /**
     * getListValue() runs once per row of the whole listing (see
     * Model\Lists\Table::prepare()) - fetching each row's latest review with
     * its own query was an N+1 that scaled with the (growing, scraped) brava
     * table. Loaded once per request instead, keyed by id_brava.
     */
    private function loadLatestReviews(): array
    {
        if (self::$latestReviews === null) {
            $sql = '
                SELECT t.id_brava, t.image, t.score, t.text
                FROM (
                    SELECT bl.id_brava, br.image, br.score, bl.text,
                           ROW_NUMBER() OVER (PARTITION BY bl.id_brava ORDER BY br.last_visit DESC) AS rn
                    FROM brava_lang AS bl
                    LEFT JOIN brava_review AS br ON br.id_brava = bl.id_brava
                    WHERE bl.id_appacman_lang = 1
                ) AS t
                WHERE t.rn = 1
            ';
            self::$latestReviews = array();
            foreach ($this->mysql->query($sql) as $row) {
                self::$latestReviews[ $row['id_brava'] ] = $row;
            }
        }
        return self::$latestReviews;
    }

    public function getListValue(?int $langID = null): string
    {
        $reviews = $this->loadLatestReviews();
        if (array_key_exists($this->id, $reviews)) {
            $item  = $reviews[ $this->id ];
            $score = $item['score'];
            if ($score > 0) {
                $img = null;
                if ($item['image']) {
                    $file = new File($item['image']);
                    $img  = $file->getAbsolutePath('thumb');
                }
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
