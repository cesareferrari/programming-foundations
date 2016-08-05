def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

puts color_valid('blue')
puts color_valid('green')
puts color_valid('yellow')

def color_valid2(color)
  ['blue', 'green'].include?(color) ? true : false
end

puts color_valid2('blue')
puts color_valid2('green')
puts color_valid2('yellow')

def color_valid3(color)
  color == "blue" || color == "green"
end

puts color_valid3('blue')
puts color_valid3('green')
puts color_valid3('yellow')
