# prometheus-and-pushgateway
Example using Pushgateway and Prometheus

## Boot

Boot the contianers:

```bash
docker-compose up -d
```

## Seed

Seed prometheus, by pushing metrics to pushgateway, so that prometheus can scrape pushgateway:

```bash
bash write.sh
```

## View Metrics

Access prometheus:

```bash
open http://localhost:9090/graph?g0.expr=heartrate&g0.tab=0&g0.stacked=0&g0.show_exemplars=0&g0.range_input=15m
```
