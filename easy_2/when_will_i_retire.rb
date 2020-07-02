print 'What is your age?'
age = gets.chomp.to_i
print 'At what age would you like to retire?'
retire_age = gets.chomp.to_i

puts "It's 2020. You will retire in #{2020 + retire_age - age}"
puts "You only have to work #{retire_age - age} more years"
