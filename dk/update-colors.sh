#!/usr/bin/env bash

# change dk colours
if [[ -e $XDG_CACHE_HOME/wal/colors-dk.sh ]]
then
    sh $XDG_CACHE_HOME/wal/colors-dk.sh
fi

# change firefox colours
pywalfox update
