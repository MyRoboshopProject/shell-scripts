#!/bin/bash

input=$1

find=Mumbi
replace=Delhi

while read $1
do
 echo "$find is replacing with $replace"
 sed -i'.backup' "s+S{find}"+${replace}+g" input

done < $input