def oddities(arr)
  result = []

  arr.each_with_index do |x, y|
    if y.even?
      result << x
    end
  end

  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([]) == []
