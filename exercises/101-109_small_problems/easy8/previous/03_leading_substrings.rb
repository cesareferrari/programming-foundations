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

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
