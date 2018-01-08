#!/bin/bash

# autodetect crop size
crop=`ffmpeg -i $1 -t 1 -vf cropdetect -f null - 2>&1 | awk '/crop/ { print $NF }' | tail -1`
# cut string from "crop=1280:528:0:0" to "crop=1280:528"
crop=`echo "${crop%:*}"`
crop=`echo "${crop%:*}"`
echo "detected crop fromat:	$crop"
echo "input:			$1"
echo "output:			$2"
date ; read -t 5 -p "Hit ENTER or wait five seconds" ; date
ffmpeg -i $1 -crf 13 -acodec copy -vf $crop -y $2
