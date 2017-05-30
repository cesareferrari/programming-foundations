# Write a method that returns a list of all substrings of a string that start
# at the beginning of the original string. The return value should be arranged
# in order from shortest to longest substring.
#

def substrings_at_start(string)
  result = []
  1.upto(string.length) { |n| result << string.slice(0, n) }
  result
end


puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
