def busted?
  true
end

def play_again?
  puts "----------"
  puts "Do you want to play again? y or n"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

play_again? ? next : break
break unless play_again?

loop do
  if busted?
    puts "I am busted"
    play_again? ? next : break
  else
    puts "I am fine"
  end
end
