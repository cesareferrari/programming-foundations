# Write a method that counts the number of occurrences of each element in a given array.
# Once counted, print each element alongside the number of occurrences.
# Expected output:

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
# count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(vehicles)
  occurrences = Hash.new(0)
  vehicles.each { |vehicle| occurrences[vehicle] += 1 }
  occurrences.each { |key, value| puts "#{key} => #{value}" }
end
