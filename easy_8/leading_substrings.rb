def substrings_at_start(str)
  arr = []
  str.chars.each_with_index {|x, idx| arr << str[0,idx+1].join}
  arr
end
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']