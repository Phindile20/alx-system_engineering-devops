#!/usr/bin/env ruby

def extract_info(log_line)
  sender = log_line.match(/\[from:(.*?)\]/)[1]
  receiver = log_line.match(/\[to:(.*?)\]/)[1]
  flags = log_line.match(/\[flags:(.*?)\]/)[1]
  
  "#{sender},#{receiver},#{flags}"
end

log_file = ARGV[0]

File.open(log_file, "r").each do |line|
  if line.include?("Sent SMS") || line.include?("Receive SMS")
    puts extract_info(line)
  end
end
