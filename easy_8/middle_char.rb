def center_of(str)
  return str[str.size/2] if str.size%2 == 1
  str[((str.length/2)-1), 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'