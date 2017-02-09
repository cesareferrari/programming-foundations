def start_end(length)
  hyphens = '-' * length
  puts "+-#{hyphens}-+"
end

def midline(length)
  spaces = ' ' * length
  puts "| #{spaces} |"
end

def stringline(string)
  puts "| #{string} |"
end

def print_in_box(string)
  start_end(string.length)
  midline(string.length)
  stringline(string)
  midline(string.length)
  start_end(string.length)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('Nel mezzo del cammin')
