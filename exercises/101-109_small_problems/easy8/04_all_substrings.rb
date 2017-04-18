def substrings_at_start(string)
  result = []
  counter = 1

  loop do
    break if counter > string.length
    result << string[0, counter]
    counter += 1
  end

  result
end

def substrings(string)
  result = []

  loop do
    result << substrings_at_start(string)
    string.slice!(0)
    break if string.empty?
  end

  result.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
