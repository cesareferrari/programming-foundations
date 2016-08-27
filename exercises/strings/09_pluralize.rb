words = 'car human elephant airplane'

puts words.split(' ').map { |word| word + 's' }


def pluralize(word)
  word + 's'
end

words.split(' ').each { |word| puts pluralize(word) }

