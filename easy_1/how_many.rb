arr = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
hash = {}
loop do 
  break if arr.empty? == true
  arr.select{|a| a == arr[0]}
  if arr.select{|a| a == arr[0]} 
    hash[arr[0]] = arr.count(arr[0])
  end
  arr.delete(arr[0])
end

puts arr
p hash
