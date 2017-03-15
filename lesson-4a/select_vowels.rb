def select_vowels(string)
  selected_chars = ''
  counter = 0

  loop do
    current_char = string[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == string.size
  end

  selected_chars
end

puts select_vowels('the quick brown fox')
puts select_vowels('I wandered lonely as a cloud')
puts select_vowels('hello world').size
