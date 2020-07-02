=begin
 

=end
def signed_integer_to_string(integer)
  return '0' if integer == 0
  positive_or_negative = integer.negative?
  if positive_or_negative
    integer = -integer
  end

  str = integer_to_string(integer)
  if positive_or_negative
    "-"+str
  elsif str == '0'
    str
  else
    "+"+str
  end
end

def integer_to_string(integer)
  int_hash = {}
  ("0".."9").each_with_index {|s, i| int_hash[i] = s}
  arr = integer.digits
  final = ''
  arr.each{|x| final << int_hash[x]}
  
  final.reverse
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'


def signed_integer_to_string2(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string2(4321) == '+4321'
p signed_integer_to_string2(-123) == '-123'
p signed_integer_to_string2(0) == '0'