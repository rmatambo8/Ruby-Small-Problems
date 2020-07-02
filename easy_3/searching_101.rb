def prompt(message)
  puts ">> #{message}"
end

numbers = []
prompt('Enter the 1st number:')
number = gets.chomp.to_i
numbers << number
prompt('Enter the 2nd number:')
number = gets.chomp.to_i
numbers << number
prompt('Enter the 3rd number:')
number = gets.chomp.to_i
numbers << number
prompt('Enter the 4th number:')
number = gets.chomp.to_i
numbers << number
prompt('Enter the 5th number:')
number = gets.chomp.to_i
numbers << number
prompt('Enter the last number:')
number = gets.chomp.to_i

if numbers.include?(number)
  puts "The number #{number} appears in #{numbers}."
else
  puts "The number #{number} does not appear in #{numbers}."
end
