def add(one,two)
  one + two
end


loop do
  puts 'enter a positive or negative number'
  num1 = gets.chomp.to_i

  puts 'enter a positive or negative number'
  num2 = gets.chomp.to_i

  if num1 > 0 && num2 < 0 || num1 < 0 && num2 > 0
    p add(num1,num2)
    break
  else
    puts 'need positive and negative number...Start Over'
  end
end
