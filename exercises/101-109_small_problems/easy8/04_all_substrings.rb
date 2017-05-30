# Write a method that returns a list of all substrings of a string. The
# returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on. Since multiple
# substrings will occur at each position, the substrings at a given position
# should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

def substrings_at_start(string)
  result = []
  1.upto(string.length) { |n| result << string.slice(0, n) }
  result
end

def substrings(string)
  result = []

  loop do
    result << substrings_at_start(string)
    string = string.slice!(1..-1)
    break if string.length == 0
  end

  result.flatten
end

def substrings(string)
  start = 0
  length = 1
  string_length = string.length
  result = []

  loop do
    loop do
      result << string.slice(start, length)
      length += 1
      break if length > string_length
    end
    start += 1
    length = 1
    string_length -= 1
    break if string_length == 0
  end

  result
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


puts substrings_at_start('abc') == ['a', 'ab', 'abc']
