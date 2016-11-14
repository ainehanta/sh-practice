#!/bin/sh

tmp="$(ls -l)"
echo $tmp | cut -c 1-10
