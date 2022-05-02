#!/bin/bash

if [ -z "$1" ]
then
    pattern="*"
else
    pattern=$1/*
fi

if [ -z "$2" ]
then
    interval="5"
else
    interval=$2
fi

while true;
do
    for image in $pattern;
    do
        # echo $image
        feh --bg-fill $image && sleep $interval;
    done
done
