#!/bin/bash
#
# simple script to monitor unbound
# All metrics are gauges

HOSTNAME="${COLLECTD_HOSTNAME:-eric}"
INTERVAL="${COLLECTD_INTERVAL:-10}"

while sleep "$INTERVAL"; do
        /usr/sbin/unbound-control stats | while read line;do
                INSTANCE=`echo $line | cut -d= -f1 | cut -d. -f1`
                STAT=`echo $line | cut -d= -f1 | cut -d. -f2- \
                        | sed 's/\./-/g' | sed 's/recursion-time-/recursion-time_/g' \
                        | sed 's/now/time-now/g' | sed 's/up/time-up/g' \
                        | sed 's/elapsed/time-elapsed/g' `
                VALUE=`echo $line | cut -d= -f2`

                echo "PUTVAL \"$HOSTNAME/unbound-${INSTANCE}/$STAT\" interval=$INTERVAL N:$VALUE"
        done
done
