colors = 'blue pink yellow orange boredom'

def include_color?(colors, color)
  colors.include?(color) ? true : false
end

puts include_color?(colors, 'yellow')
puts include_color?(colors, 'purple')
puts include_color?(colors, 'red')
