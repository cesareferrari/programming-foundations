# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be
# unchanged.

# You may not use String#swapcase; write your own version of this method.


def swapcase(string)
  result = ''
  letters = string.chars

  letters.each do |letter|
    if letter.downcase == letter
      result << letter.upcase
    else
      result << letter.downcase
    end
  end

  result
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
