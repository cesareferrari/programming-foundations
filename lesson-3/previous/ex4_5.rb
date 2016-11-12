def factors(number)
  dividend = number
  divisors = []

  if number > 0
    while dividend > 0 do
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
    end
  else
    return "You entered #{number}. Number must be positive"
  end

  divisors
end

p factors(5)
p factors(0)
p factors(-1)


# 1) What is the purpose of the number % dividend == 0 ?
# Make sure there is no remainder
#
# 2) What is the purpose of the second-to-last line in the method (the divisors
# before the method's end)?
# Return the divisors array, otherwise it will not be returned and the method
# will return nil.

