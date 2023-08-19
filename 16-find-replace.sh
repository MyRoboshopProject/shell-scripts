#!/bin/bash

input=$1

find=Mumbi
replace=Delhi

while read line
do
    sed -i'.backup' "s+S{find}"+${replace}+g" input

done < $input