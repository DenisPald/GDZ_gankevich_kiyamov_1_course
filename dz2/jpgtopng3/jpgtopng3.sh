#!/usr/bin/bash

find . -name "*.jpg" | while read img
do
  convert $img ${img:0:-4}.png &
done

wait
