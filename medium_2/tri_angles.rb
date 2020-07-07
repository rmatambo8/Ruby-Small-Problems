def triangle(a,b,c)
  values = [a,b,c]
  case
  when values.include?(0) || values.sum != 180
    :invalid
  when values.include?(90)
    :right 
  when values.max < 90
    :acute
  else
    :obtuse    
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid