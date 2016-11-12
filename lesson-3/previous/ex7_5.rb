def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if !is_a_number?(word)
  end

  true
end

def is_a_number?(string)
  string.to_i.to_s == string
end

p "10.4.5.11", dot_separated_ip_address?("10.4.5.11")
p "10.4.0.11", dot_separated_ip_address?("10.4.0.11")
p "10.4.5", dot_separated_ip_address?("10.4.5")
p "10.4.5.11.5", dot_separated_ip_address?("10.4.5.11.5")
p "10.xx.5.11", dot_separated_ip_address?("10.xx.5.11")
