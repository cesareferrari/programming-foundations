def palindrome?(string)
  string.reverse == string
end

def palindromic_number?(num)
  palindrome?(num.to_s)
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
