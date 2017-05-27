def palindrome?(string)
  string == string.reverse && string.size > 1
end
