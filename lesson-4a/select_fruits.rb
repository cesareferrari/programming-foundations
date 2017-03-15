def select_fruit(produce)
  all_produce = {}
  keys = produce.keys
  counter = 0

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == keys.size

    current_key = keys[counter]

    if produce[current_key] == 'Fruit'
      all_produce[current_key] = 'Fruit'
    end

    counter += 1
  end


  all_produce
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce) == {"apple"=>"Fruit", "pear"=>"Fruit"}
