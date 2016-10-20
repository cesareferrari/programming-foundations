require 'yaml'

MESSAGES = YAML.load_file('messages.yaml')

LANGUAGE = 'it'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key, extra='')
  message = messages(key, LANGUAGE)
  puts "==> #{message} #{extra}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
   num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(operator)
  op = case operator
       when '1'
         'Adding'
       when '2'
         'Subtracting'
       when '3'
         'Multiplying'
       when '4'
         'Dividing'
       end
  op
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

prompt('hi', name)

loop do
  number1 = ''
  loop do
    prompt('first_number')
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt('no_valid_number')
    end
  end

  number2 = ''
  loop do
    prompt('second_number')
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt('no_valid_number')
    end
  end

  prompt('operator_prompt')

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('must_choose')
    end
  end

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  puts "#{operation_to_message(operator)}"

  prompt('result_is', result)

  prompt('perform_another')

  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('bye')
