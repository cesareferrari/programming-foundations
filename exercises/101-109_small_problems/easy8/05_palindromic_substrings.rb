def palindrome?(string)
  string == string.reverse && string.size > 1
end

def substrings_at_start(string)
  result = []
  1.upto(string.length) { |n| result << string.slice(0, n) }
  result
end

def substrings(string)
  result = []

  loop do
    result << substrings_at_start(string)
    string = string.slice!(1..-1)
    break if string.length == 0
  end

  result.flatten
end

def palindromes(string)
  substrings(string).select {|str| palindrome?(str)}
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [ 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada', 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did', '-madam-', 'madam', 'ada', 'oo' ]
puts palindromes('knitting cassettes') == [ 'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt' ]


