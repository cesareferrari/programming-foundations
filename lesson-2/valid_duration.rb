def valid_duration?(value)
  value.to_f > 0
end

# Valid input return true
puts valid_duration?('2') == true
puts valid_duration?('3.4') == true
puts valid_duration?('.4') == true
puts valid_duration?('0.4') == true

# Invalid input return false
puts valid_duration?('0') == false
puts valid_duration?('-1') == false
puts valid_duration?('') == false
puts valid_duration?('u') == false
