#!/bin/sh

if [ "$(tty)" = "/dev/tty1" ]; then
    sync
    shutdown -h now
fi
