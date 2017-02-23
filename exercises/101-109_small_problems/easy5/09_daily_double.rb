# Works:
# def crunch(string)
#   string.squeeze
# end

def crunch(string)
  letters = string.chars
  result = ''

  loop do
    break if letters.empty?

    if result[-1] == letters.first
      letters.shift
    else
      result << letters.shift
    end
  end

  result
end


puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
