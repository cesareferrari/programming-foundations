def palindrome_string?(string)
  string.reverse == string
end

def palindrome_array?(array)
  array.reverse == array
end

def palindrome?(object)
  object.reverse == object
end

puts palindrome_array?([1, 2, 3, 2, 1]) == true
puts palindrome_array?([1, 2, 3, 4, 5]) == false
puts palindrome_array?(['eenie', 'meenie', 'many', 'meenie', 'eenie']) == true

puts palindrome_string?('madam') == true
puts palindrome_string?('Madam') == false          # (case matters)
puts palindrome_string?("madam i'm adam") == false # (all characters matter)
puts palindrome_string?('356653') == true

puts palindrome?([1, 2, 3, 2, 1]) == true
puts palindrome?([1, 2, 3, 4, 5]) == false
puts palindrome?(['eenie', 'meenie', 'many', 'meenie', 'eenie']) == true
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
