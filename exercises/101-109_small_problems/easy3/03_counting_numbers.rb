print "Please write word or multiple words: "
string = gets.chomp

count = string.delete(' ').size

puts "There are #{count} characters in \"#{string}\""
