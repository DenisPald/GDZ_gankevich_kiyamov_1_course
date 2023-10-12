#!/usr/bin/bash

# > output.txt
find /sys -name "temp*input*" | while read line
do
  temperature=`cat $line`
  echo "Температура $temperature"
done
