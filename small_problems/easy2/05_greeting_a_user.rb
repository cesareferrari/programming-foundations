print "What is your name? "
name = gets.chomp

if name.reverse.start_with?('!')
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name}"
end
