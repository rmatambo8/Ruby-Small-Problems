def multiply_all_pairs(arr1,arr2)
  result = arr1.product(arr2).map do |num|
    num.reduce(:*)
  end
  result.sort
end

# here when using the product method, i could have given two param, one for each element
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]