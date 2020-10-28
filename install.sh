#!/bin/bash

HERE="$(dirname "$(realpath "${0}")")"
ln -s "${HERE}/start.sh" /usr/bin/jl
