# You're not returning a false condition,
# and you're not handling the case that
# there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or
# "1.2.3.4.5" should be invalid)."


def is_an_ip_number?(word)
  regex = /^\d{1,3}$/
  word.match regex
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  return true
end

puts dot_separated_ip_address?('255.0.0.1') == true
puts dot_separated_ip_address?('255.255.255.255') == true
puts dot_separated_ip_address?('') == false
puts dot_separated_ip_address?('1.0') == false
puts dot_separated_ip_address?('1.0.5') == false
puts dot_separated_ip_address?('4.5.5') == false
puts dot_separated_ip_address?('1.2.3.4.5') == false
puts dot_separated_ip_address?('2555.0.0.1') == false

