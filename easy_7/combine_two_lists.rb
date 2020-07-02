def interleave(arr1, arr2)
  arr = []
  length = arr1.size
  counter = 0
  loop do 
    break if counter == length
    arr << arr1[counter]
    arr << arr2[counter]
    counter += 1
  end
  arr
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']