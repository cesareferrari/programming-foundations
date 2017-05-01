numbers = []

ORDER = %w(1st 2nd 3rd 4th 5th last)

def message
  "Enter the #{ORDER.first} number:"
end

while ORDER.size > 0 do
  puts message
  ORDER.shift
  numbers << gets.chomp.to_i
end

last_number = numbers.pop

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}"
else
  puts "The number #{last_number} does not appear in #{numbers}"
end
