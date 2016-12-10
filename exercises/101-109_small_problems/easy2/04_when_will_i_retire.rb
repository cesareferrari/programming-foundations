puts "=> What is your age?" # 30
current_age = gets.chomp.to_i

puts "=> At what age would you like to retire?" # 70
retirement_age = gets.chomp.to_i

remaining_years = retirement_age - current_age
current_year = Time.now.year
retirement_year = current_year + remaining_years

puts "=> It's #{current_year}. You will retire in #{retirement_year}."
puts "=> You have only #{remaining_years} years of work to go!"
