def multisum(num)
  num = num.to_i
  arr= (1..num).to_a
  sum = 0

  arr.each do |x|
    if x % 3 == 0 || x % 5 == 0
      sum = sum + x
    end
  end

  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
