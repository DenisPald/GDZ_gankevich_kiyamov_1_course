#!/usr/bin/bash


type="$(file -b --mime-type "$1")"

echo "$type"

if [[ "$type" == "image"* ]]; then
    gimp "$1"
fi

if [[ "$type" == "application/vnd.openxmlformats-officedocument.wordprocessingml.document" ]]; then
    libreoffice "$1"
fi

if [[ "$type" == "video"* ]]; then
    mpv "$1"
fi
