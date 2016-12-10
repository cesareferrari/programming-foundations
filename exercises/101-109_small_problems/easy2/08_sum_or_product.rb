def valid?(number_string)
  if number_string.to_i > 0
    return true if number_string.to_i.to_s == number_string
  end
end

def sum_for(number_string)
  (1..number_string.to_i).to_a.reduce(:+)
end

def product_for(number_string)
  (1..number_string.to_i).to_a.reduce(:*)
end

operation = nil
number = nil

loop do
  puts '>> Please enter an integer greater than 0:'
  number = gets.chomp

  if valid?(number)
    break
  else
    puts "**>> Mmmm..., '#{number}' doesn't seem right. Try again!"
  end
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase

  if operation.start_with?('s')
    puts ">> The sum of the integers between 1 and #{number} is #{sum_for(number)}."
    break
  elsif operation.start_with?('p')
    puts ">> The product of integers between 1 and #{number} is #{product_for(number)}."
    break
  else
    puts "**>> Nope! '#{operation}' is definitely not a valid input!"
  end
end
