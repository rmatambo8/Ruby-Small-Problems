def stringy(number)
  number = number.to_i
  if number <= 0
    return "this is not a valid number"
  elsif number == 1
    return "1"
  elsif number.odd? == true
    return "1"+ "01"*((number-1)/2)
  else
    return "10"*(number/2)
  end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
