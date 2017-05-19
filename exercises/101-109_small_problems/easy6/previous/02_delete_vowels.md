Write a method that takes an array of strings, and returns an array of
the same string values, except with the vowels (a, e, i, o, u) removed.


Input: array of strings
Output: array of strings, vowels removed (aeiou)

Rules: remove vowels from words in array

Example:

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

Algorithm:
iterate through the array, word for word
delete 'aeiou' from word
return original array
