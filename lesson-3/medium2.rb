def separator(question_number)
  puts "\n" + "*" * 80
  puts "Question #{question_number}".center(80)
  puts "*" * 80 + "\n"
end

separator(1)
# Question 1
# Figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

male_ages = []
munsters.each do |person, details|
  male_ages << details['age'] if details['gender'] == 'male'
end

p male_ages.reduce(:+)


separator(2)
# Question 2
# print out the name, age and gender of each family member: (Name) is a (age) year old (male or female).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |person, details|
  puts "#{person} is a #{details['age']} year old #{details['gender']}"
end


separator(3)
# Question 3
# How can we refactor this exercise to make the result easier to predict

def tricky_method(a_string_param, an_array_param)
  a_string_param.concat " rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


separator(4)
# Question 4
# Use String#split in conjunction with Array#join
# to break up the following string and put it back together with the words in reverse order:
# result == "wall a on sat Dumpty Humpty."

sentence = "Humpty Dumpty sat on a wall."

words = []
sentence.split(' ').each do |word|
  word.gsub!('.', '')
  words << word
end
result = words.reverse.join(' ') + '.'

puts result

# better answer:
words = sentence.split(/\W/)
words.reverse!
backwards_sentence = words.join(' ') + '.'
puts backwards_sentence





separator(5)
# Question 5
# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8  #=> 34



separator(6)
# Question 6
# Did the family's data get ransacked?

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)
# yes

p munsters



separator(7)
# Question 7
# What is the result of the following call?

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# paper



separator(8)
# Question 8
# What would be the output of this code:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

# no
