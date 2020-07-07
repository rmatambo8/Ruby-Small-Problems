def fibonacci_last(number)
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
  arr[-1]%10
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789)