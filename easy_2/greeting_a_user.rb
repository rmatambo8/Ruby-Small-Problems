print 'What is your name?'
name = gets.chomp

if name.include?('!')
  name = name.delete('!')
  puts "HELLO #{name.upcase}. WHY ARE WE YELLING"
else
  puts "Hello #{name}."
end
