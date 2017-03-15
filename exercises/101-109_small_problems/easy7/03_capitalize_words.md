Write a method that takes a single String argument and returns a new
string that contains the original value of the argument, but the first
letter of every word is now capitalized.

You may assume that words are any sequence of non-blank characters, and
that only the first character of each word must be considered.

Input: string
Output: new string

Rules:
  original string is not changed
  output string: first letter of every word capitalized
  words: sequence of non-blank chars

  javaScript -> Javascript
  "quoted" -> "quoted"

Data structure:
  array of words

Algorithm:
  split input string into words
  capitalize each word
  join words with a space

Examples

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
