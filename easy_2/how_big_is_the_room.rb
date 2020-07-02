=begin
prompt: Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end

puts "Enter the length of the room in meters: "
length = gets.chomp.to_i
puts "Enter the width of the room in meters: "
width = gets.chomp.to_i
square_meters = length*width
in_feet = square_meters*10.7639
puts "The area of the room is #{square_meters} square meters (#{in_feet.round(2)} square feet)."