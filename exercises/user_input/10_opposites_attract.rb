def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def check_for_zero(number_string)
  puts '>> Invalid input. Only non-zero integers are allowed.' if number_string == '0'
end

def check_for_positive_and_negative(num1, num2)
  positive(num1) && negative(num2) || negative(num1) && positive(num2) 
end

def positive(number_string)
  number_string.to_i > 0
end

def negative(number_string)
  number_string.to_i < 0
end

def get_input_number
  puts '>> Please enter a positive or negative integer:'
  gets.chomp
end

def read_number
  number = nil
  loop do
    number = get_input_number
    break if valid_number?(number)
    check_for_zero(number)
  end
  number
end

loop do
  number1 = read_number
  number2 = read_number

  num1 = number1.to_i
  num2 = number2.to_i
  sum = num1 + num2

  if check_for_positive_and_negative(num1, num2)
    puts "#{num1} + #{num2} = #{sum}"
    break
  else
    puts '>> Sorry. One integer must be positive, one must be negative.'
    puts '>> Please start over.'
  end
end
