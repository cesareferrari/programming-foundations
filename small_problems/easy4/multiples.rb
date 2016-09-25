#works
#def multisum(num)
#  sum = 0
#
#  1.upto(num) do |n|
#    if n % 3 == 0 || n % 5 == 0
#      sum += n
#    end
#  end
#
#  sum
#end

def multisum(num)
  (0..num).inject {|sum, n| sum + valid(n)}
end

def valid(number)
  (number % 3 == 0 || number % 5 == 0) ? number : 0
end


puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
