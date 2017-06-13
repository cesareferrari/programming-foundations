# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example, 44, 3333,
# 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned
# as-is.
#
#
# if num is not an even number of digits
#   double it and return
#
# if num is even length
#    slice in 2
#    if left slice == right slice (double number)
#      return number as is
#    else
#      return number * 2
#
#
#

def twice(num)
  number = num.to_s
  length = number.length

  case
  when length.odd?
    return num * 2
  when length.even?
    left =  number.slice(0, number.length / 2)
    right = number.slice((number.length / 2)..-1)
    left == right ? num : num * 2
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
