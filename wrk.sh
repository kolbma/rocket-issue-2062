#!/bin/sh

wrk="$(command -v wrk)"

[ -x "$wrk" ] || { echo "$0: missing wrk... please install" >&2 ; exit 1 ; }

for b in 4096 4097 8429 8430 10000 40960 409600 4096000 ; do
	for n in 1 2 10 100 ; do
		echo -e -n "b=$b n=$n\t\t"
		"$wrk" -c "$n" -t "$n" -d 3s http://localhost:8000/$b | grep "Req/Sec" | awk "{ print $2 }"
	done
done

