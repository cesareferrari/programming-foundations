CURRENT_YEAR = 2017

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

remaining_years = retirement_age - current_age
retirement_year = CURRENT_YEAR + remaining_years

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{remaining_years} years of work to go!"
