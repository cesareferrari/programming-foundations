puts "=> Enter the length of the room in meters:"
length = gets.chomp

puts "=> Enter the width of the room in meters:"
width = gets.chomp

area_square_meters = length.to_f * width.to_f
area_square_feet = area_square_meters * 10.7639

puts "=> The area of the room is #{area_square_meters} square meters (#{area_square_feet} square feet)."
