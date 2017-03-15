LOWERCASE = /[a-z]/
UPPERCASE = /[A-Z]/
NEITHER = /[^a-zA-Z]/

def letter_case_count(string)
  counts = {}
  counts[:lowercase] = string.chars.count {|char| char.match(LOWERCASE)}
  counts[:uppercase] = string.chars.count {|char| char.match(UPPERCASE)}
  counts[:neither] = string.chars.count {|char| char.match(NEITHER)}
  counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
