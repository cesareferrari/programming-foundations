loop do
  puts "Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase

  if %(y n).include? answer
    break(puts 'something') if answer == 'y'
    break if answer == 'n'
  end

  puts 'Invalid input! Please enter y or n'
end
