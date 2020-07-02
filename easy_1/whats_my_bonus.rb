def calculate_bonus(number, boolean)
  number = number.to_i
  bonus = (boolean == true ? number/2 : 0)
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
