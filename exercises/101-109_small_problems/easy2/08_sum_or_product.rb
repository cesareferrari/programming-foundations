def prompt(msg)
  puts ">> #{msg}"
end

int = 0
result = 0

loop do
  prompt "Please enter an integer greater than 0:"
  int = gets.chomp.to_i

  if int <= 0
    prompt "The integer must be greater than 0."
  else
    break
  end
end

prompt "Number entered: #{int}"

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase

  if operation == 's'
    result = (1..int).reduce(:+)
    break
  elsif operation == 'p'
    result = (1..int).reduce(:*)
    break
  else
    puts "You must enter 's' or 'p'!"
  end
end

prompt "The sum of the integers between 1 and #{int} is #{result}."
