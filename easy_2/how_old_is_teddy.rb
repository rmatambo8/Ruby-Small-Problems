# Prompt : Build a program that randomly generates and 
# prints Teddy's age. To get the age, 
# you should generate a random number between 20 and 200.
puts " please enter your name: "
name = gets.chomp 
if name.empty?
  name = "Teddy"
end

teddy_age_range = (20..200).to_a

puts "#{name} is #{teddy_age_range.sample} years old!"