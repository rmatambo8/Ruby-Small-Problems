# inverse relationships need inverse functions.
# what i was trying to do they did, turns out i needed to put the space first.

def triangle(int)
  space = ' '
  star = '*'
  arr = []
  counter = 1
  loop do 
    break if counter == int + 1
    (int- counter).times { arr << space}
    counter.times {arr << star}
    puts arr.join('')
    counter += 1
    arr = []
  end
end

triangle(5)
triangle(9)

def inverse_triangle(int)
  space = ' '
  star = '*'
  arr = []
  counter = int
  loop do 
    break if counter == 0
    (int- counter).times { arr << space}
    counter.times {arr << star}
    puts arr.join('')
    counter -= 1
    arr = []
  end
end

inverse_triangle(5)
inverse_triangle(9)
  