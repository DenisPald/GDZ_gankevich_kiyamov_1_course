#!/usr/bin/bash

while getopts "x:y:" v; do
    case "$v" in
        x)
            x=$OPTARG
            ;;
        y)
            y=$OPTARG
            ;;

        *)
            ;;
    esac
done

curl wttr.in/"$x","$y"
