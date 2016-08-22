lines = nil

loop do
  puts '>> How many output lines do you want? Enter a number >= 3: (Q to quit)'
  lines = gets.chomp

  if lines.match(/^\D/)
    if lines.downcase.start_with?('q')
      break
    else
      puts '>> Please, type Q to quit or enter a number of lines to print'
    end
  end

  number_of_times = lines.to_i

  if number_of_times < 3
    puts '>> Not enough lines'
  else
    number_of_times.times { puts '>> Launchschool is the best.' }
  end

end

puts 'Good Bye.'
