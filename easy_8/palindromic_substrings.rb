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

def palindromes(strarr)
  substrings(strarr).select {|x| x.reverse == x && x.size > 1}
end
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]