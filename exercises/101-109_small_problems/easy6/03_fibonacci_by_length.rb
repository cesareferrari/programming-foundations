def find_fibonacci_index_by_length(length)
  numbers = %w(1 1)

  loop do
    next_number = (numbers[-2].to_i + numbers[-1].to_i).to_s
    numbers << next_number

    break if next_number.length == length
  end

  numbers.size
end

find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
