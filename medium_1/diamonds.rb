=begin
Write a method that displays a 4-pointed diamond in an n x n grid,
where n is an odd integer that is supplied as an argument to the method.
You may assume that the argument will always be an odd integer.

input - integer ( odd int)
output - diamond based on nubmer of diamonds

approach
 - there will be n/2 - 1 spaces on each side
 - number of stars increase
 - number of spaces decrease
 - once they reach max, they start decreasing again.
 Main problem: how to have a counter loop?
 - i could just create two loops


 ALG 
  - create a string n spaces long.
  - center of will have n- counter stars
  - when stars = n or counter = 1 they break from loop
  - in second loop, break when stars are back to one
  - a method that makes stars.
    - (9-1)/2  - 4 spaces
    - (7-1)/ 2 - 3 spaces
    - 2 spaces
    - 1 space
    - no space
     - break
     -go backwards

=end

def diamond(number)
  spaces = (number - 1)/2
  stars = 1
  loop do 
    break if stars == number
    puts (" "*spaces+"*"*stars+" "*spaces)
    stars += 2
    spaces -= 1
  end
  loop do 
    puts (" "*spaces+"*"*stars+" "*spaces)
    stars -= 2
    spaces += 1
    break if stars == -1
  end
end

diamond(1)
diamond(3)
diamond(9)

