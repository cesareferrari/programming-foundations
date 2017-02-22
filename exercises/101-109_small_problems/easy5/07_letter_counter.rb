def word_sizes(string)
  sizes = Hash.new(0)
  regex = /[^a-z]/i
  words = string.split.map { |word| word.gsub(regex, '') }
  words.each do |word|
    sizes[word.length] += 1
  end
  sizes
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
