def fibonacci(number)
  arr = [1,1,2]
  return arr[0] if number <=2
  counter = 3
  loop do 
    break if counter == number
    arr[-3] = arr[-2]
    arr[-2] = arr[-1]
    arr[-1] = arr[-2] + arr[-3]
    counter += 1
  end
  arr[-1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)