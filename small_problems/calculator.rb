puts 'Welcome to Calculator'

puts "What's the first number?"
first_number = gets.chomp

puts "What's the second number?"
second_number = gets.chomp

puts "What's the operation? 1) addition, 2) subtraction, 3)  multiplication, 4) division."
operation = gets.chomp

if operation == '1'
  result = first_number.to_i + second_number.to_i
elsif operation == '2'
  result = first_number.to_i - second_number.to_i
elsif operation == '3'
  result = first_number.to_i * second_number.to_i
else
  result = first_number.to_f / second_number.to_f
end

puts result
