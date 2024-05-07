#!/usr/bin/env ruby

# Get the argument passed to the script
input = ARGV[0]

# Define the regular expression
regex = /School/

# Check if the input matches the regular expression
match = input.match(regex)

# Output the matched string
puts match[0] if match

