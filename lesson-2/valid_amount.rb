def valid_amount?(value)
  value.to_f > 0
end

puts valid_amount?('120000.37') == true
puts valid_amount?('.37') == true
puts valid_amount?('0.37') == true
puts valid_amount?('100') == true

puts valid_amount?('0') == false
puts valid_amount?('-1') == false
puts valid_amount?('') == false
puts valid_amount?('u') == false

