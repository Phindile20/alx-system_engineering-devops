#!/usr/bin/env ruby

pattern = /hb[t]+n/
input_string = ARGV[0]

matches = input_string.scan(pattern)
puts matches.join

