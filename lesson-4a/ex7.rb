statement = "The Flintstones Rock"

hash = Hash.new(0)
letters = statement.chars.delete_if {|char| char == ' ' }.sort
letters.each { |char| hash[char] += 1 }
p hash
