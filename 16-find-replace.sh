#!/bin/bash

input=$1

find=Delhi
replace=Mumbai

    
while read line
do
    echo "Replacing Delhi with Mumbai"
    sed -i s/$find/$replace/g input

done < $input