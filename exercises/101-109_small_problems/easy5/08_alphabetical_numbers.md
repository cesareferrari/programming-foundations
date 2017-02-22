Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:

alphabetic_number_sort((0..19).to_a) == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0 ]

alphabetic_number_sort((3..10).to_a) == [ 8, 5, 4, 9, 7, 6, 10, 3]


Input: array of integers 0-19
Output: array of integers 0-19 (sorted alphabetically)

Rules:
number_words: sorted (eight, eighteen, ... zero)
map array of numbers to sorted array of words

Data structure:
2 elements array
Input: array [0, 1, 2, 3, 4, 5 .. 19]
Data: {8 => 'eight', 18 => 'eighteen' ..  0 => 'zero'}


Algorithm:
word_numbers = {8 => 'eight', 18 => 'eighteen' ..  0 => 'zero'}
map input array using word_numbers so the result is an array of words
sort array
map words back to number by selecting elements that have that value
return array
