def multisum(int)
	all_numbers = []
	
	loop do
    all_numbers.unshift(int)
    break if int == 1
    int -= 1
  end
  
  all_numbers
  multiples = []
  
  counter = all_numbers.length 
 
  loop do 
  	multiples.unshift(all_numbers[counter - 1]) if all_numbers[counter - 1] % 3 == 0 || all_numbers[counter - 1] % 5 == 0 
  	break if counter == 1
  	counter -= 1  
  end  
 
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168