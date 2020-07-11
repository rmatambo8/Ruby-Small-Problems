a = %w(a b c d e)
#puts a.fetch(7) # index error because lies outside of array bounds
puts a.fetch(7, 'beats me') # returns the string 'beats me' because the index given lies outside of bounds and a second argument was given for index error
puts a.fetch(7) { |index| index**2 } # block is only executed when index error exception is raised. so the value of the index is returned squared.