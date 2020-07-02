def ascii_value(str)
  str = str.split('')
  counter = 0
  sum = 0

  loop do
    break if counter == str.length
    sum += str[counter].ord
    counter +=1
  end

  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
