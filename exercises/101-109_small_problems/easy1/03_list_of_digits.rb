# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# def digit_list(num)
#   result = []
#
#   loop do
#     num, remainder = num.divmod(10)
#     result.unshift remainder
#     break if num == 0
#   end
#
#   result
# end

def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
