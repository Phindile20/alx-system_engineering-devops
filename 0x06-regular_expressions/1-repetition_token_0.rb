#!/usr/bin/env ruby

# Get the argument passed to the script
input = ARGV[0]

# Define the regular expression pattern
regex = /hbt{2,5}n/  # Matches strings starting with 'hb' followed by 2 to 5 occurrences of 't' and ending with 'n'

# Scan the input for occurrences of the pattern and join them
matches = input.scan(regex).join

# Output the matched strings
puts matches

