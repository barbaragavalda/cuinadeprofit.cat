<?php

namespace Cronjob\Controller;

use Core\Controller\Controller;
use Core\Model\Encryptor\Migrator;
use Core\Model\MySQL\Manager;
use Core\Routing\Attribute\Route;
use Core\Utils\Exception;

/**
 * One-off action: re-encrypts any legacy-format TwoWay column to the current
 * algorithm, backfilling its blind index where one exists (see
 * Core\Model\Encryptor\Migrator and \TwoWay - both shared across every
 * project, this controller only lists *this* project's own TwoWay columns).
 * Safe to run repeatedly - already migrated rows are skipped. dev-only:
 * remove the IS_DEV guard (and put this behind real auth) before ever
 * exposing it in prod.
 */
class MigrateEncryption extends Controller
{

    #[Route('/migrate-encryption', methods: ['GET'], name: 'cronjob.migrate_encryption')]
    public function build(): void
    {
        if (!IS_DEV) {
            throw new Exception('MigrateEncryption is a dev-only action.');
        }

        $mysql = Manager::getInstance();

        // one entry per TwoWay column in this project - pass a bidx column
        // only for fields that actually need exact-match search
        $migrated = array(
            'appacman_user.email' => Migrator::reencryptTwoWayColumn(
                $mysql,
                'appacman_user',
                'id_appacman_user',
                'created',
                'email',
                'email_bidx'
            ),
            'appacman_user.name'  => Migrator::reencryptTwoWayColumn(
                $mysql,
                'appacman_user',
                'id_appacman_user',
                'created',
                'name'
            ),
        );

        $this->assign('migrated', $migrated);
        $this->json();
    }

}
