#!/usr/bin/bash

>script.sh

find . -maxdepth 1 -type f | while read -r line
do
    # line=${new:2}
    new=$(echo "$line" | tr '[:upper:]' '[:lower:]')

    if [[ "$new" != "$line" ]]
    then
        echo -n "mv " >> script.sh
        echo -n "$line " >> script.sh
        echo "$new" >> script.sh
    fi
done

