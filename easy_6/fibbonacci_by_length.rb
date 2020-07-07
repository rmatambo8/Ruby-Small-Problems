def find_fibonacci_index_by_length(num)
  digits = 1
  fib_num = 3
  fib_finder = [1,1,2]
  loop do
    break if fib_finder[-1].to_s.size >= num
    fib_finder[-3] = fib_finder[-2]
    fib_finder[-2] = fib_finder[-1]
    fib_finder[-1] = fib_finder[-3] + fib_finder[-2] 
    fib_num += 1
    digits += 1 if fib_finder[-1].size > digits
  end
  fib_num
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

