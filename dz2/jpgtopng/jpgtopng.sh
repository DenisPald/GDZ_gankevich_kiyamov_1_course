#!/usr/bin/bash

for img in "$@"
do
  convert "$($img -cut 3)" "${img:0:-4}.png"
done
