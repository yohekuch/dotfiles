#!/bin/bash

set -eu

LINK=./deploy/foo/*

for dtfile in $LINK
#do echo $(basename ${dtfile})
do ln -s ${dtfile} ${HOME}/$(basename ${dtfile})
done


