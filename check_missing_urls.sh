#!/bin/sh

for d in /usr/ports/vccrux/*; do
	port=`basename $d`
	egrep -q "^# $port" urls || echo $port
done

