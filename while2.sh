#!/bin/sh

cnt=0

ls -l | \
while read line
do
    echo ${cnt} ${line}
    cnt=$((${cnt} + 1))
done
