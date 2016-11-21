#!/bin/sh

# create the trash can if doesn't exist.
mkdir -p "${HOME}/.trash"

for item in $@; do
    cd $(dirname $item)
    converted_path=$(pwd | sed -e 's/\//%/g')
    uniq_id=$(od -vAn -N4 -tu4 < /dev/urandom | tr -d ' ')
    eval mv "${item}" "${HOME}/.trash/${item}_${converted_path}_${uniq_id}"
done

