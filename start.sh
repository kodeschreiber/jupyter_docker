#!/bin/bash

uniqstr="inst_$(date +%s)"
xhost +
docker run -it --rm --privileged -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY jl:1.2
