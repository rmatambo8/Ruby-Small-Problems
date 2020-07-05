def sequence(num)
  return (num..-1).to_a if num.negative?
  return (1..num).to_a if num.positive?
  0 
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]