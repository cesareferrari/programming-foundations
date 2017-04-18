STORY = "I think I will %s my %s %s %s"

loop do
  print 'Enter a noun: '
  noun = gets.chomp

  print 'Enter a verb: '
  verb = gets.chomp

  print 'Enter an adjective: '
  adjective = gets.chomp

  print 'Enter an adverb: '
  adverb = gets.chomp

  puts format(STORY, verb, adjective, noun, adverb)

  puts 'Do you want to play again? (Y/N)'

  answer = gets.chomp.downcase

  break if answer == 'n'
end

puts 'Goodbye!'
