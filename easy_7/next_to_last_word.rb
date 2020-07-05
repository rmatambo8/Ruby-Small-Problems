def penultimate(str)
  str.split[-2]
end
# for the first time, my solution was more compact than launch schools.
# 

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'