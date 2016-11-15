# Question 1
# Show an easier way to write this array:
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

p %w(Fred Barney Wilma Betty BamBam Pebbles)


# Question 2
# How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.push('Dino')

# Question 3
# How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.push('Dino', 'Hoppy')

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.concat(%w(Dino Hoppy))


# Question 4
# Shorten this sentence: remove everything starting from "house".

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))
puts advice


# Question 5
# Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
puts statement.scan('t').count


# Question 6
# If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
p title.center(40)
