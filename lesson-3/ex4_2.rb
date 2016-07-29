statement = "The Flintstones Rock"

result = {}

statement.each_char { |c| result[c] ?  result[c] += 1 : result[c] = 1 }

p result


# also:
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end
