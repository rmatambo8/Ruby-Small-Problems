
def string_to_signed_integer(str)
  str_final = str
  str = str.split('')
  str_arr = ("0".."9").to_a
  arr = []
  counter = 0 
      #["1","2","3","4"]
  loop do
    break if counter == str.length
    # ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    str_arr.each_with_index do |value, idx|
      arr << idx if str[counter] == value
    end
    
    counter += 1
  end
  #[1,2,3,4]
  num = array_to_sum(arr)
  num = -num if str_final.include?("-")
  num = num if str_final.include?("+")
  num
end

# 1 * 10 ^ 3 = 1 * 1000 = 
def array_to_sum(input)
  arr_sum = []

  input.each_with_index do |x,y| 
    arr_sum << x*10**(input.size - (y + 1))
  end

  arr_sum.sum
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100