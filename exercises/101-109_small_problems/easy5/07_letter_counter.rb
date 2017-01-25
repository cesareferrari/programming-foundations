def word_sizes(string)
  word_count = Hash.new(0)

  words = string.split.sort_by(&:length)

  clean_words = words.map { |word| word.gsub(/\W/, '') }

  clean_words.each { |word| word_count[word.length] += 1 }
  word_count
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}

