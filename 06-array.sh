#!/bin/bash

# this is called array, Instead of single value it can hold multiple values

PERSON=("Ramesh" "Suresh" "Rohit")

echo "First Person is: ${PERSON[0]}"
echo "All Persons is: ${PERSON[@]}"