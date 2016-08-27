names_and_ages = ['Dave', 7, 'Miranda', 3, 'Jason', 11]

nested_array = []

until names_and_ages.empty?
  nested_array << names_and_ages.shift(2)
end

p nested_array
# [["Dave", 7], ["Miranda", 3], ["Jason", 11]]
