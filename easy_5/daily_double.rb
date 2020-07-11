def crunch(str)
  str.chars.each do |char|
    str.gsub!(/[#{char}]+/, char)
  end
  str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''