def minilang(str)
  string = str.split
  stack = []
  register = 0
  string.each do |input| 
    case input
    when 'ADD'    then register += stack.pop
    when 'DIV'    then register /= stack.pop
    when 'MOD'    then register %= stack.pop
    when 'PUSH'   then stack << register
    when 'MULT'   then register *= stack.pop
    when 'PRINT'  then puts register
    when 'SUB'    then register -= stack.pop
    when 'POP'    then register = stack.pop
    else               register = input.to_i
    end
  end
end

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('PRINT')
