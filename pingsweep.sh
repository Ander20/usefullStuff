#!/bin/bash

(prefix="10.10.10" && for i in `seq 254`; do (sleep 0.5 && ping -c1 -w1 $prefix.$i &> /dev/null && arp -n | awk ' /'$prefix'.'$i' / { print $1 " " $3 } ') & done; wait)
