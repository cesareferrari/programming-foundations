def buy_fruit(list)
  result = []

  list.each do |quantities|
    quantities[1].times do
      result << quantities[0]
    end
  end

  result
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas", "bananas"]
