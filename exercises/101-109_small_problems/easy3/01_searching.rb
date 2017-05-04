LIMIT = 5

def prompt(msg)
  puts "==> #{msg}"
end

def ordinalize(num)
  if [11, 12, 13].include? num
    return "#{num}th"
  end

  case num.to_s[-1]
  when '1' then "#{num}st"
  when '2' then "#{num}nd"
  when '3' then "#{num}rd"
  else
    "#{num}th"
  end
end

numbers = []
counter = 1

loop do
  prompt "Enter the #{ordinalize(counter)} number:"
  numbers << gets.chomp.to_i
  counter += 1

  break if counter > LIMIT
end

prompt "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  prompt "The number #{last_number} appears in #{numbers.to_s}"
else
  prompt "The number #{last_number} does not appear in #{numbers.to_s}"
end
