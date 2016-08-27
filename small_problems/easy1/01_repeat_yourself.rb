def repeat(string, number_of_times=1)
  num = number_of_times.to_i

  if num == 0
    puts string
  else
    num.times { puts string }
  end
end

repeat('Hello', 3)                        #=> Hello Hello Hello
repeat('Hi', '2')                         #=> Hi Hi
repeat('Goodbye')                         #=> Goodbye
repeat('Tomorrow is Sunday', 'forever')   #=> Tomorrow is Sunday
