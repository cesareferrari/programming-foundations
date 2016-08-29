vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']


# def count_occurrences(vehicles)
#   vehicles_hash = {}
# 
#   vehicles.each do |vehicle|
#     if vehicles_hash[vehicle]
#       vehicles_hash[vehicle] += 1
#     else
#       vehicles_hash[vehicle] = 1
#     end
#   end
# 
#   vehicles_hash.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end

# def count_occurrences(array)
#   occurrences = {}
#
#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end
#
#   occurrences.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end

# My final version
def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] ? occurrences[element] += 1 : occurrences[element] = 1
  end
  
  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

# def count_occurrences(array)
#   array.uniq.each {|e| puts "#{e} => #{array.count(e)}"}
# end


count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
