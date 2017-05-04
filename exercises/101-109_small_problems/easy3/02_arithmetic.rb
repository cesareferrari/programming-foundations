def prompt(msg)
  puts "==> #{msg}"
end

def is_zero_or_negative?(num)
  if num < 1
    prompt "Number entered must be positive."
    true
  else
    false
  end
end

first = 1
loop do
  prompt "Enter the first number:"
  first = gets.chomp.to_i
  break unless is_zero_or_negative?(first)
end

second = 1
loop do
  prompt "Enter the second number:"
  second = gets.chomp.to_i
  break unless is_zero_or_negative?(second)
end

prompt "#{first} + #{second} = #{first + second}"
prompt "#{first} - #{second} = #{first - second}"
prompt "#{first} * #{second} = #{first * second}"
prompt "#{first} / #{second} = #{first / second}"
prompt "#{first} % #{second} = #{first % second}"
prompt "#{first} ** #{second} = #{first ** second}"
