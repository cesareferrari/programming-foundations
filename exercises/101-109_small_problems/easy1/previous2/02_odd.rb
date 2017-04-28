# Write a method that takes one argument in the form of an integer or a float;
# this argument may be either positive or negative. This method should check if a
# number is odd, returning true if its absolute value is odd. You may assume that
# only integers are passed in as arguments.

# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

# num can be integer or float
# num can be converted to int
# num can be positive or negative

# convert num to int
# convert num to abs value
# return true if num is odd

# what's an odd number?
# num % 2 == 1

# 2 / 2 = 1
# 4 / 2 = 2

# how to convert to abs?
# num.abs
# -1.abs == 1
# 1.abs == 1


def is_odd?(num)
  (num.to_i.abs % 2 == 1) ? true : false
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
