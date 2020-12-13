#!/bin/bash

# check vccrux
for d in /usr/ports/vccrux/*; do
	port=`basename $d`
	egrep -q "^# $port" urls || echo $port
done

# check contrib
grep 'Alexandr Savca' --include=Pkgfile -rl /usr/ports/contrib | while read d; do
	port="$(basename $(dirname $d))"
	egrep -q "^# $port" urls || echo $port
done

# check contrib volgk
grep 'Stamatin' --include=Pkgfile -rl /usr/ports/contrib | while read d; do
	port="$(basename $(dirname $d))"
	egrep -q "^# $port" urls || echo $port
done

