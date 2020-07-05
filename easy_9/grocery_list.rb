def buy_fruit(arr)
  arr = arr.map do |fruit, sum| 
    [fruit]*sum
  end

  arr.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

