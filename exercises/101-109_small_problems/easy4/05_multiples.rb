# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.


# initialize result array
# go through numbers between 1 and num
# if number is multiple, add to result array
# reduce result array and return

def is_multiple?(num)
  (num % 3 == 0) || (num % 5 == 0)
end

def multisum(num)
  result = []
  1.upto(num) { |n| result << n if is_multiple?(n) }
  result.reduce(:+)
end


puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
