# cron_save_coins_prices

debe incluir la siguiente linea en su archivo de cron

```
* * * * * {ubicacion_proyecto}/scripts/init_cron.sh >> {ubicacion_proyecto}/logs/apis.log 2>&1
```
