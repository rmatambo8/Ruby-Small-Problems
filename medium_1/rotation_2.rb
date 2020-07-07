=begin
Aim: rotate just the number of digits mentioned
ALG
- i have a method that can rotate the number of digits in an array
- separate the number of digits mentioned 
=end

def rotate_rightmost_digits(num, digits)
  array = num.digits.reverse
  (array[0,array.size-digits] + rotate_array(array[-digits, digits])).join.to_i
end

def rotate_array(array)
  array[1..-1] +[array[0]]
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
