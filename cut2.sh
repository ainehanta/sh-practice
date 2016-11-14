#!/bin/sh

tmp=$(ls -l)
echo $tmp | cut -d' ' -f 2
