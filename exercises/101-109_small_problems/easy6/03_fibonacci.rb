# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)

#Input : int represents the number of digits (1 is 1 digit, 13 is 2 digits, etc.)

#Output : int index (base 1) of the first Fibonacci number with input number of digits



# def find_fibonacci_index_by_length(length)
#   fib = [1, 1]
#
#   loop do
#     fib << fib[-2] + fib[-1]
#     break if fib[-1].to_s.length == length
#   end
#
#   fib.size
# end

def find_fibonacci_index_by_length(length)
  first = 1
  second = 1
  counter = 2

  loop do
    fib = first + second
    first = second
    second = fib
    counter += 1

    break if fib.to_s.length == length
  end

  counter
end



puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
#puts find_fibonacci_index_by_length(10000) == 47847
