#!/usr/bin/env bash

for number in $(seq 1 20)
do
  first=$(seq 100 110 | sort -R | head -n 1)
  last=$(seq 10 99 | sort -R | head -n 1)
  echo "heartrate ${first}.${last}" | curl --data-binary @- http://localhost:9091/metrics/job/my_custom_metrics/name/john
  sleep 15
done
