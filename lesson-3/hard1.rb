def separator(question_number)
  puts "\n" + "*" * 80
  puts "Question #{question_number}".center(80)
  puts "*" * 80 + "\n"
end

separator(1)
# Question 1
# What do you expect to happen when the greeting variable is referenced in the
# last line of the code below?

if false
  greeting = "hello world"
end

greeting  #=> nil



separator(2)
# Question 2
# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings  # => { a: 'hi there' }



separator(3)
# Question 3

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"


def mess_with_vars2(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars2(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"



def mess_with_vars3(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars3(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"



separator(4)
# Question 4
# Write a method that returns one UUID when called with no parameters

# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

require 'securerandom'
p SecureRandom.uuid


def generate_uuid
  allowed_characters = ('a'..'f').to_a + (0..9).to_a
  hyphen_positions = [8, 13, 18, 23]
  uuid = []

  32.times { uuid << allowed_characters.sample.to_s }

  hyphen_positions.each { |position| uuid.insert(position, '-') }

  uuid.join
end

p generate_uuid
p generate_uuid



separator(5)
# Question 5
# You're not returning a false condition, and you're not handling the case that
# there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or
# "1.2.3.4.5" should be invalid)."


# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end



def is_an_ip_number?(word)
  regex = /^\d{1,3}$/
  word.match regex
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  return true
end

puts dot_separated_ip_address?('255.0.0.1') == true
puts dot_separated_ip_address?('255.255.255.255') == true
puts dot_separated_ip_address?('') == false
puts dot_separated_ip_address?('1.0') == false
puts dot_separated_ip_address?('1.0.5') == false
puts dot_separated_ip_address?('4.5.5') == false
puts dot_separated_ip_address?('1.2.3.4.5') == false
puts dot_separated_ip_address?('2555.0.0.1') == false
