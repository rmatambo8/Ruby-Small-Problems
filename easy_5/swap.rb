def swap(str)
  return str if str.size == 1
  string = str.split
  string = string.map do |x|
    x[0],x[-1] = x[-1], x[0] if x.size > 1
    x
  end
  string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'