#!/usr/bin/bash

for img in $*
do
  convert $img ${img:0:-4}.png &
done

wait
