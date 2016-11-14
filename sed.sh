#!/bin/sh

tmp=$(ls -l)
echo "$tmp" | sed "s/total/quantity/"
