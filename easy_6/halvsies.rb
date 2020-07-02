def halvsies(arr)
  arr.size % 2 == 0 ? count = arr.size/2 : count = (arr.size/2 + 1) 
  arr1 = arr.slice!(0..count-1)
  arr2 = [arr1, arr]
  arr2
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]