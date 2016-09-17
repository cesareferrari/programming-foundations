puts "Please write word or multiple words:"
phrase = gets.chomp

word_characters = phrase.chars.select { |c| c.match(/\w/) }.count

puts "There are #{word_characters} characters in \"#{phrase}\"."
