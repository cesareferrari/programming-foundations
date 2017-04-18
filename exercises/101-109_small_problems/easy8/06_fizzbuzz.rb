def fizzbuzz(start_number, end_number)
  result = []

  start_number.upto(end_number) do |num|
    case divisible(num)
    when 0 then result << 'FizzBuzz'
    when 1 then result << 'Fizz'
    when 2 then result << 'Buzz'
    else
      result << num
    end
  end

  result.join(', ')
end

def divisible(num)
  return 0 if num % 3 == 0 && num % 5 == 0
  return 1 if num % 3 == 0
  return 2 if num % 5 == 0
end

fizzbuzz(1, 15) == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"
