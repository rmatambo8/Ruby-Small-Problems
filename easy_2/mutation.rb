array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S')}
puts array2
# the upcase method will mutate the objects that each value is pointing to
# therefore any variable that was pointing to that object will still point
# to the same object but the new object will be mutated.