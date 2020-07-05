def twice(num)
  if num.to_s.size.odd?
    return num*2
  else
    num_of_digits = num.to_s.length
    array = num.digits.reverse
  end
  return num if array[0, num_of_digits/2] == array[(num_of_digits/2)..(-1)]
  num *2
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10


# middle
=begin
aim - to split numbs by the middle
 - first change to strings
 - determine if first half is same as second half
  - determine the size of my sting
  - match first half to second half.
=end