def sum(number)
  number = number.to_i.to_s.split("")
  arr =[]
  arr = number.map(&:to_i)
  arr.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
