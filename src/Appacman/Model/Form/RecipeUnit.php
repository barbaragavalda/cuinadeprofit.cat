<?php

namespace Appacman\Model\Form;

class RecipeUnit extends Select
{

    protected function getOptions(?string $table = null, string $extraFields = ''): array
    {
        $options = parent::getOptions($table, $extraFields);

        foreach ($options as &$option) {
            if ($option['id'] == 1) {
                $option['name'] = '(unitari)';
            }
            if ($option['id'] == 19) {
                $option['name'] = $option['name'] . ' (precisió)';
            }
        }

        return $options;
    }

}
