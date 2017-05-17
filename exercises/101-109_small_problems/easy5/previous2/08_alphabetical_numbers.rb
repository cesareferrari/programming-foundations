WORD_NUMBERS = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen' }

def alphabetic_number_sort(array)
  sorted_words = array.map {|number| WORD_NUMBERS[number]}.sort
  sorted_words.map { |word| WORD_NUMBERS.key(word) }
end

puts alphabetic_number_sort((0..19).to_a) == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0 ]
puts alphabetic_number_sort((3..10).to_a) == [ 8, 5, 4, 9, 7, 6, 10, 3]




SCORE = {'apple' => 100, 'pear' => 50, 'fig' => 200}

def sort_words(words)
  words.sort_by { |word| SCORE[word]}
end

words = %w(apple pear fig)
sort_words(words)
# ["pear", "apple", "fig"]

