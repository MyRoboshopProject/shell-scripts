#!/bin/bash

input=$1

find=Mumbai
replace=Delhi

    
while read line
do
    sed -i s/$find/$replace/g input

done < $input