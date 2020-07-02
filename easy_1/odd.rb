def is_odd?(num)
  (num.abs)%2==1? true : false
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)
puts is_odd?(7)    

#before 2.4 they used integer.remainder method instead of % modulo.