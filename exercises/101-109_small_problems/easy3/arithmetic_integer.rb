SIGNS = %w(+ - * / % **)

puts "==> Enter the first number:"
first_number = gets.to_i

puts "==> Enter the second number:"
second_number = gets.to_i

SIGNS.each do |sign|
  operation = [first_number, sign, second_number].join(' ')
  result = first_number.send(sign, second_number)
  puts "==> #{operation} = #{result}"
end
