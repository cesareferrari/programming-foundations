# Return a hash where the value is 'Fruit'

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def select_fruit(produce)
  produce.select { | key, value | value == 'Fruit' }
end


def select_fruit(produce)
  keys = produce.keys  # ['apple', 'carrot', ...]
  counter = 0
  fruits = {}

  loop do
    current_key = keys[counter]
    if produce[current_key] == 'Fruit'
      fruits[current_key] = 'Fruit'
    end

    counter += 1
    break if counter == keys.size
  end

  p fruits
end


select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
