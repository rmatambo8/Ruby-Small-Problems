def prompt(message)
  puts ">> #{message}"
end

prompt('Enter the 1st number:')
number1 = gets.chomp.to_i
prompt('Enter the 2nd number:')
number2 = gets.chomp.to_i

prompt("#{number1} + #{number2} = #{number1 + number2}")
prompt("#{number1} - #{number2} = #{number1 - number2}")
prompt("#{number1} * #{number2} = #{number1 * number2}")
prompt("#{number1} / #{number2} = #{number1 / number2}")
prompt("#{number1} % #{number2} = #{number1 % number2}")
prompt("#{number1} ** #{number2} = #{number1**number2}")
