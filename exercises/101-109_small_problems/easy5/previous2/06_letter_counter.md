Write a method that takes a string with one or more space separated
words and returns a hash that shows the number of words of different
sizes.

Words consist of any string of characters that do not include a space.

Input:
  string
  1 or more words
  space separated

Rules:
  iterate on words and count the characters (string.length)
  include punctuation in character count
  if input is empty string, return empty hash

Output:
  hash
  key is number of characters
  value is number of words with that number characters

Data structure:
  input: array
  output: hash

Examples:

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

Algorithm:
  initialize output hash with initial value 0 (Hash.new(0))
  input split into array (split on space)
  for each word
    hash[word.length] += 1
  return hash


