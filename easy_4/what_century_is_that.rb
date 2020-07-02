def century(num)
  if (num % 100).zero? == true
    num = (num - num.to_i % 100) / 100
  else
    num = (((num - num.to_i % 100) / 100) + 1)
  end
  num = num.to_s

  teenth_suffix(num)
end

def teenth_suffix(num)
  if num[-2, 2] == '11' || num[-2, 2] == '12' || num[-2, 2] == '13'
    "#{num}th"
  else
    century_suffix(num)
  end
end

def century_suffix(num)
  if num[-1] == '1'
    "#{num}st"
  elsif num[-1] == '2'
    "#{num}nd"
  elsif num[-1] == '3'
    "#{num}rd"
  else
    "#{num}th"
  end
end

p century(2_000) == '20th'
p century(2_001) == '21st'
p century(1_965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10_103) == '102nd'
p century(1_052) == '11th'
p century(1_127) == '12th'
p century(11_201) == '113th'
