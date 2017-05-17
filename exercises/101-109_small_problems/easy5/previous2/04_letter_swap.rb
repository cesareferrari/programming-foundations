def swap_letters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  string.split(' ').map { |word| swap_letters(word) }.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
