# Cuina de Profit

Web app built on the in-house [Freimguork](https://bitbucket.org/optisistem/freimguork-core) framework (PHP 8.5, Twig, its own routing/DI). Includes the [Appacman](https://bitbucket.org/optisistem/freimguork-appacman) admin panel as a Composer package.

## Running locally

Docker-based (see `VM/docker-compose.yml` in the monorepo). With the containers up:

```bash
docker exec php sh -c "cd /var/www/html/cuina-de-profit-local && composer install"
```

- Public site: `http://cuina-de-profit.local/`
- Admin (Appacman): `http://cuina-de-profit.local/wallaby/`

If `freimguork-core` or `freimguork-appacman` change, update them with `composer update <package>` (not a bare `composer install`).

## Structure

- `src/Web` — public site
- `src/Appacman` — admin extensions (`ExtraUser`, etc.)
- `src/Cronjob` — scheduled tasks
- `src/Import` — import tools (dev only)
- `config/` — per-environment (`dev/`, `prod/`) and per-sub-project config
- `web/` — served folder (`index.php`, published assets)
