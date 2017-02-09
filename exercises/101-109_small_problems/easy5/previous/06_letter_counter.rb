# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

#{ number_of_letters => how_many_words }
#
#separate the words
#words = string.split.sort_by(&:length)
#
#for each word create an entry in the hash for the length if it does not exist already
#

def word_sizes(string)
  word_count = Hash.new(0)
  words = string.split.sort_by(&:length)
  words.each { |word| word_count[word.length] += 1 }
  word_count
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
