loop do
  puts '>> What is your age in years?'
  age_in_years = gets.chomp

  if age_in_years.to_i.to_s == age_in_years
    age_in_months = age_in_years.to_i * 12
    puts ">> You are #{age_in_months} months old"
    break
  else
    puts '>> Please enter a number'
  end
end
