# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.

# def crunch(string)
#   string.squeeze
# end

def crunch(string)
  result = ''
  letters = string.chars

  loop do
    break if letters.size == 0
    current_letter = letters.shift
    result << current_letter unless result.end_with?(current_letter)
  end

  result
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
