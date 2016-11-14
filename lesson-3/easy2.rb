# Question 2
# see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.include?('Spot')
puts ages.has_key?('Spot')
puts ages.key?('Spot')
puts ages.member?('Spot')
puts ages.keys.include?('Spot')
puts ages.any? {|k, _| k == 'Spot'}


# Question 2
# Add up all of the ages from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.values.reduce(:+)
puts ages.values.inject(:+)


# Question 3
# throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.reject { |_, v| v >= 100 }
p ages.keep_if { |_, v| v < 100 }


# Question 4
# Convert the string in the following ways

munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.capitalize == "The munsters are creepy in a good way."
puts munsters_description.swapcase == "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
puts munsters_description.downcase == "the munsters are creepy in a good way."
puts munsters_description.upcase == "THE MUNSTERS ARE CREEPY IN A GOOD WAY."


# Question 5
# add ages for Marilyn and Spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

p ages.merge(additional_ages)


# Question 6
# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages.values.min
p ages.values.sort.first


# Question 7
# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.include?('Dino')
puts advice.match('Dino')


# Question 8
# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.find_index { |name| name.start_with?('Be') }
puts flintstones.index { |name| name.start_with?('Be') }
puts flintstones.rindex { |name| name.start_with?('Be') }


# Question 9 - 10
# Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map do |name|
  puts name.slice(name[0, 3])
end

p flintstones.map { |name| name.slice(/.../) }
p flintstones.map { |name| name.slice(name[0, 3]) }
