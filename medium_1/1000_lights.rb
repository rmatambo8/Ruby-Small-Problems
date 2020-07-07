
# prompt : write a method that will take one argument, 
# the total numbre of switches and return an array that
# identifies which lights are on after n repetitions 

# rules 
# - each switch connected to one light that is off at first
# - you turn every one of them on
# - on the second pass you toggle evens
# - third pass divisible by 3
# - 4th pass divisible by 4

# argument passed in - n
# approach 
#  - erase if number is present
#  - write if number is present
#  ALG
#  - init an empty arr of numbers
#  - iterate through an array and incrementally change the numbers
#   - make a case that the modulo number is divisible by counter
#   - if not divisible, it stays the same
#   - iterate until counter = number 
#  - if numbers are even, then the lights are on, if odd, lights are off


def thousand_lights(n)
  arr = []
  counter = 1
  lights_arr = [1]*n
  loop do
    break if counter == n + 1
    lights_arr = (lights_arr.map.with_index do |num, index|
      if (index + 1) % counter == 0
        num += 1
      else
        num
      end
    end) 
    counter += 1
  end
  lights_arr.each_with_index {|x,idx| arr << idx + 1 if x.even?}
  p arr
end

thousand_lights(1000)