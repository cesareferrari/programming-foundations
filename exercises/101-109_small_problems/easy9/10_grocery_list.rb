# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

def buy_fruit(list)
  result = []
  list.each do |sub_list|
    1.upto(sub_list[1]) { result << sub_list[0] }
  end
  result
end

def buy_fruit(list)
  list.map {|(fruit, quantity)| [fruit] * quantity}
end



puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]




