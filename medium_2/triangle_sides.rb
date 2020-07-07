def triangle(a,b,c)
  values = [a,b,c]
  case
  when (values.min(2).sum < values.max) || (values.include?(0))
    :invalid
  when values.min == values.max 
    :equilateral
  when values.min(2)[0] == values.min(2)[1] ||
       values.max(2)[0] == values.max(2)[1]
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid