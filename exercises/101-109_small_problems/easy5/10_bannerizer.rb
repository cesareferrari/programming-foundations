def print_in_box(string)
  line = "+-#{'-' * string.length}-+"
  empty_line = "| #{' ' * string.length} |"
  text = "| #{string} |"

  puts line
  puts empty_line
  puts text
  puts empty_line
  puts line
end


print_in_box('To boldly go where no one has gone before.')

print_in_box('')

print_in_box('One plus three is four')

