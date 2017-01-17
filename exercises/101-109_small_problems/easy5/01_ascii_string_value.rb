#Write a method that determines and returns the ASCII string value of a string
#that is passed in as an argument. The ASCII string value is the sum of the
#ASCII values of every character in the string. (You may use String#ord to
#determine the ASCII value of a character.)


def ascii_value(string)
  return 0 if string.empty?
  string.chars.map { |char| char.ord }.reduce(:+)
end


puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
