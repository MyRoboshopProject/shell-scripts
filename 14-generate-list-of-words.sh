#!/bin/bash

# check if the input file is provided

input_file="$1"

if [ $# -ne 1 ]
    then
        echo "Usage: $0 input_file"
        exit 1
fi

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Input file not found."
    exit 1
fi

# Use tr to convert all characters to lowercase, sed to remove punctuation,
# and awk to count the frequencies of words

cat "$input_file" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-zA-Z0-9 \t]/ /g' | awk '{
    for (i = 1; i <= NF; i++) {
        words[$i]++;
    }
}
END {
    for (word in words) {
        print word, words[word];
    }
}' | sort -k2,2nr -k1 > word_frequencies.txt

echo "Word frequencies saved to word_frequencies.txt"




