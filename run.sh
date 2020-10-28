#!/bin/bash

set -m
uniqstr="jl_$(date +%s)"
jupyter-lab --ip 0.0.0.0 --browser="/usr/bin/firefox --kiosk --class="${uniqstr}" %s" &
sleep 7
wmctrl -xa "${uniqstr}" -b toggle,fullscreen
fg %1
exit
