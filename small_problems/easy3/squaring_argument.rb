def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power(num, power)
  result = 1

  power.times do
    result = multiply(result, num)
  end

  result
end

puts square(5) == 25
puts square(-8) == 64

puts "Result of 4 ** 3 (should be 64): #{power(4, 3)}"
puts "Result of 4 ** 4 (should be 256): #{power(4, 4)}"
