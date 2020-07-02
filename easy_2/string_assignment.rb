name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

#results will be 'BOB' and 'BOB' because the upcase method mutated the caller.
 