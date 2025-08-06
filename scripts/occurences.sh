#!/bin/bash

read -p "Enter a sentence: " sentence

# Check if input is empty
if [[ -z "$sentence" ]]; then
    echo "Error: No input provided."
    exit 1
fi

# Convert to lowercase and split into words
words=($(echo "$sentence" | tr '[:upper:]' '[:lower:]' | grep -oE '\w+'))

# Count word occurrences
declare -A word_counts
for word in "${words[@]}"; do
    ((word_counts["$word"]++))
done

# Print results
echo -e "\nWord counts:"
for word in "${!word_counts[@]}"; do
    echo "$word: ${word_counts[$word]}"
done | sort