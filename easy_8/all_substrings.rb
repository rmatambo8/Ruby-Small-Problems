def substrings(str)
  chars = str.chars
  strarr = []
  chars.each_with_index do |char, idx|
    chars.each_with_index do |letter, index| 
      strarr << chars[idx..index].join if !chars[idx..index].empty?
    end
  end
  strarr
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]