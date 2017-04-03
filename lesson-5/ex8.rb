# Using the each method, write some code to output all of the vowels from the strings.

hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

hsh.each do |key, strings|
  strings.each do |string|
    string.chars.each do |char|
      puts char if %w(a e i o u).include? char
    end
  end
end

puts hsh.values.flatten.join.chars.select {|char| 'aeiou'.include? char}
