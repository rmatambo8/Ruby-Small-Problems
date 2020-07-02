def reverse!(arr)
  repeat = arr.length
  arr1 = []
  repeat.times do
    value = arr.pop
    arr1 << value 
  end
  repeat.times do 
    arr << arr1.shift
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
 list == ["abc"]

 list = []
p reverse!(list) == []
p list == []