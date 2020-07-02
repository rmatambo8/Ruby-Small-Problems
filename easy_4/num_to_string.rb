def integer_to_string(integer)
  int_hash = {}
  ("0".."9").each_with_index {|s, i| int_hash[i] = s}
  arr = integer.digits
  final = ''
  arr.each{|x| final << int_hash[x]}
  
  final.reverse
end

DIGITS = ("0".."9").to_a
def ints_to_string(integer)
  result = ''
  loop do
    number, remainder = number.divmod(10)

    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

p ints_to_string(4321)
p ints_to_string(0)
p ints_to_string(5000)