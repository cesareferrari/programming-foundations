# SET iterator = 1
# SET saved_number = value within numbers collection at space 1
#
# WHILE iterator < length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number
#
#   iterator = iterator + 1
#
#   PRINT saved_number
#
# END

def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||= num # assign to first value

    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

numbers = [1, 5, 6, 3, 8, 2, 6]
puts find_greatest(numbers)
