#!/bin/sh

ls -l | \
while read line
do
    echo ${line}
done
