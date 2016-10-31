def valid_interest?(value)
  /\d+/.match(value) && value.to_f >= 0
end

valid_interest_values = ['0', '0.0', '.0', '4.0', '4', '4.3', '4.30', '.75', '0.63', '5%', '5 %', '.54%', '.54 %', '0.54%', '0.54 %']
invalid_interest_values = ['', 'string', 'u', '-0', '-1', '-1.2', '-1.2%', '-.3%']

puts 'Valid interest values (should return true)'

valid_interest_values.each do |value|
  puts "Value: #{value} - #{valid_interest?(value)}"
end

puts 'Invalid interest values (should return false)'

invalid_interest_values.each do |value|
  puts "Value: #{value} - #{valid_interest?(value)}"
end
