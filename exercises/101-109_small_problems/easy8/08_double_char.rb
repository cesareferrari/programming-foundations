def repeater(string)
  string.chars.map {|char| char * 2}.join
end

def double_consonants(string)
  result = string.chars.map do |char|
    if 'aeiouAEIOU -!0123456789'.include? char
      char
    else
      char * 2
    end
  end

  result.join
end


puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
