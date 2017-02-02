def multiple_of_3_and_5?(num)
  (num % 3 == 0 || num % 5 == 0) ? true : false
end

def multisum(num)
  number = num.to_i
  return 0 if number <= 0
  (1..number).select { |n| multiple_of_3_and_5?(n) }.reduce(:+)
end

puts multisum(0) == 0
puts multisum(-1) == 0
puts multisum('4') == 3
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
