#!/bin/sh

wrk="$(command -v wrk)"

[ -x "$wrk" ] || { echo "$0: missing wrk... please install" >&2 ; exit 1 ; }

b=4096
while [ $b -le 8430 ] ; do
	for n in 1 2 10 ; do
		echo -e -n "b=$b n=$n\t\t"
		"$wrk" -c "$n" -t "$n" -d 3s http://localhost:8000/$b | grep "Req/Sec" | awk "{ print $2 }"
	done
	b=$((b+1))
done

