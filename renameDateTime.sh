#!/bin/sh

if [ -n "$1" ]; then
    search_with=$1
    files=$(ls -l --time-style="+%Y-%m-%d_%H-%M-%S" ${search_with}*)
else
    files=$(ls -l --time-style="+%Y-%m-%d_%H-%M-%S" | tail -n +2)
fi

echo "${files}" | while read line
do
    timestamp=`echo ${line} | cut -d " " -f 6`
    filename=`echo ${line} | cut -d " " -f 7`

#    timestamp_from_filename=`echo ${filename} | cut -d "_" -f 1-2 -s`

    #if [ -n "${timestamp_from_filename}" ]; then
    if [ `echo ${filename} | grep ^${timestamp}` ]; then
        echo "skip: ${filename}"
        continue
    fi

    mv ${filename} "${timestamp}_${filename}"
    echo "mv ${filename} ${timestamp}_${filename}"
done
