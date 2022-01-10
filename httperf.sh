#!/bin/sh

httperf="$(command -v httperf)"

[ -x "$httperf" ] || { echo "$0: missing httperf... please install" >&2 ; exit 1 ; }

for b in 4096 4097 8429 8430 10000 40960 409600 4096000 ; do
	for n in 1 2 10 100 ; do
		echo -n "b=$b n=$n "
		"$httperf" --server localhost --port 8000 --uri /$b --num-calls $n | grep "ms/req"
	done
done

