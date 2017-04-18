def reversed_number(num)
  result = 0

  loop do
    num, remainder = num.divmod(10)
    result = result * 10 + remainder
    break if num == 0
  end

  result
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # Note that zeros get dropped!
puts reversed_number(1) == 1
