# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method return true if the number's absolute value is
# odd. You may assume that the argument is a valid integer value.

# def is_odd?(int)
#   (int.abs % 2 == 0) ? false : true
# end

def is_odd?(int)
  int % 2 == 1
end

puts is_odd?(2)    == false
puts is_odd?(5)    == true
puts is_odd?(-17)  == true
puts is_odd?(-8)   == false
puts is_odd?(0)    == false
