print 'Please write word or multiple words:'
input = gets.chomp
characters = input.delete(' ').length
puts "There are #{characters} characters in '#{input}'."
