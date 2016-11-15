def separator(question_number)
  puts "\n" + "*" * 80
  puts "Question #{question_number}".center(80)
  puts "*" * 80 + "\n"
end

separator(1)
# Question 1
# write a one-line program that creates the following output 10 times, with the
# subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

phrase = 'The Flintstones Rock!'
10.times { |number| puts ' ' * number + phrase }

phrase = 'The Flintstones Rock!'
10.times { puts phrase.prepend(' ') }


separator(2)
# Question 2
# Create a hash that expresses the frequency with which each letter occurs in this string:
# ex:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"

frequency = Hash.new(0)
statement.chars.each { |char| frequency[char] += 1 }
p frequency


separator(3)
# Question 3
# The result of the following statement will be an error:
# Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"


separator(4)
# Question 4
# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# 1
# 3

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1
# 2


separator(5)
# Question 5

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

p factors(18)

def factors2(number)
  dividend = number
  divisors = []

  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors2(18)
p factors2(0)


separator(6)
# Question 6
# Is there a difference between the two, other than what operator she chose to
# use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

buffer1 = [1, 2, 3, 4, 5]
p rolling_buffer1(buffer1, 5, 8)
p buffer1

buffer2 = [1, 2, 3, 4, 5]
p rolling_buffer2(buffer2, 5, 8)
p buffer2


separator(7)
# Question 7
# What's wrong with the code (corrected):

def fib(first_num, second_num, limit = 15)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"


separator(8)
# Question 8
# Write your own version of the rails titleize implementation.
# words = "the flintstones rock"
# would be:
# words = "The Flintstones Rock"

words = "the flintstones rock"
p words.split.each {|w| w.capitalize!}.join(' ')


separator(9)
# Question 9
#  a kid is in the age range 0 - 17
#  an adult is in the range 18 - 64
#  senior is aged 65+.
#  try using a case statement along with Ruby Range objects in your solution

# Your solution should produce the hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# for each key, add key/value
#   each key returns a hash
#   to this hash merge new element
#     key: age_group,  value: adult / kid / senior
#     based on age range
#     0..17.cover? age  kid
#     18..64.cover? age  adult
#     age >= 65  senior

munsters.each do |person, details|
  case details['age']
  when 0..17
    details['age_group'] = 'kid'
  when 18..64
    details['age_group'] = 'adult'
  else
    details['age_group'] = 'senior'
  end
end

p munsters
