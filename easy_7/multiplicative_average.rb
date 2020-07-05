=begin
Rules
- multiplies all ints together
- divides by the number of entries.
=end
def show_multiplicative_average(arr)
  multiples = arr.reduce(:*)
  average = multiples.to_f/(arr.length.to_f)
  "The result is #{format('%.3f', average)}"
end

# format passes regex in the first argument and a an int obj in the second
# if i did 3d format would take 
p show_multiplicative_average([3, 5]) ==  "The result is 7.500" 

p show_multiplicative_average([6]) == "The result is 6.000"

p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == "The result is 28361.667"