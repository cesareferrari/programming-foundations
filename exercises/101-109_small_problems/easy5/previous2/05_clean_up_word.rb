def cleanup(string)
  regex = /[-'+*&?]/
  string.gsub!(regex, ' ')
  string.gsub!(/ +/, ' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
