<?php

namespace Cronjob\Controller;

use Core\Controller\Controller;
use Core\Model\Encryptor\Migrator;
use Core\Model\Encryptor\Secret;
use Core\Model\MySQL\Manager;
use Core\Routing\Attribute\Route;
use Core\Utils\Exception;

/**
 * One-off action: re-encrypts any legacy-format TwoWay column to the current
 * algorithm, backfilling its blind index where one exists (see
 * Core\Model\Encryptor\Migrator and \TwoWay - both shared across every
 * project, this controller only lists *this* project's own TwoWay columns).
 * Safe to run repeatedly - already migrated rows are skipped.
 *
 * Gated by a token derived from the same master secret (config/keys.php)
 * instead of IS_DEV - that way it needs no extra config value to create or
 * upload, but still can't be triggered by anyone who doesn't already have
 * that secret. Compute the expected token once, locally, reading keys.php
 * directly (Config::getInstance() alone won't load it outside a real
 * request - it needs Bootstrap's loadConfigs() call, which this bypasses):
 *
 *   php -r '
 *     $config = null;
 *     include "config/prod/keys.php"; // or config/dev/keys.php
 *     $secret = hex2bin($config["encryption"]["secret"]);
 *     echo bin2hex(hash_hkdf("sha256", $secret, 32, "freimguork:migrate-encryption:token"));
 *   '
 *
 * then call this action once as /migrate-encryption?token=<that value>. Do
 * not leave this route reachable indefinitely - remove it again (or at
 * least rotate the master secret) once the migration has run.
 */
class MigrateEncryption extends Controller
{

    #[Route('/migrate-encryption', methods: ['GET'], name: 'cronjob.migrate_encryption')]
    public function build(): void
    {
        $token = (string) ($_GET['token'] ?? '');
        if (!$token || !hash_equals(self::expectedToken(), $token)) {
            throw new Exception('Invalid or missing token.');
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

    private static function expectedToken(): string
    {
        return bin2hex(Secret::derive('freimguork:migrate-encryption:token'));
    }

}
