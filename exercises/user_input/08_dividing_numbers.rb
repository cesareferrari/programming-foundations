def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts '>> Please, enter the numerator:'
  numerator = gets.chomp

  puts '>> Please, enter the denominator:'
  denominator = gets.chomp

  if denominator.start_with? '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.' 
  else
    break if valid_number?(numerator) && valid_number?(denominator)
    puts '>> Invalid input, only integers are allowed'
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"
