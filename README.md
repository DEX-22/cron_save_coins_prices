# cron_save_coins_prices

debe incluir la siguiente linea en su archivo de cron

```
* * * * * {ubicacion_proyecto}/scripts/init_cron.sh >> {ubicacion_proyecto}/logs/apis.log 2>&1
0 */2 * * * {ubicacion_proyecto}/scripts/create_backup.sh >> {ubicacion_proyecto}/logs/backup.log 2>&1

```
