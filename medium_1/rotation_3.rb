def rotate_rightmost_digits(num, digits)
  array = num.digits.reverse
  (array[0,array.size-digits] + rotate_array(array[-digits, digits]))
end

def rotate_array(array)
  array[1..-1] +[array[0]]
end

=begin
point - to sequentially rotate each set of right nost digits.

ALG 
- separate all digits
  - 
- initialize a counter for rotation
- iterate through digits and rotate them
  - use number from (start..-1)
  - use rightmost method to iterate
- return the new number
  - that has shuffled digits
=end


def max_rotation(number)
  digits = number.digits.reverse
  counter = digits.size
  loop do
    break if counter == 0
    digits = rotate_rightmost_digits(digits.join.to_i, counter)
    counter -= 1  
  end
  digits.join.to_i
end



p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845