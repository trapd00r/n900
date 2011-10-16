#!/bin/sh
# quick battery status
lshal \
  | grep -E  'battery.(remaining_time\s|charge_level.percentage)' \
  | perl -pe 's{time = (\d+)}{"time = " . $1 / 60 . " minutes"}e'
