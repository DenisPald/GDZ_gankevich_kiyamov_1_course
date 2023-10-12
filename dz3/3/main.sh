#!/usr/bin/bash

my_func(){
    index=0
    for arg in "$@"
    do
        index=$((index+1))
        if [[ "$index" == 1 ]]
        then 
            file_name=$arg
        else 
            com="$com $arg"
        fi 
    done

    eval "$com" > "$file_name"
}

my_func output.txt man vi
