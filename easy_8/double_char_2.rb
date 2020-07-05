def repeater(str)
  chars = str.chars
  chars = chars.zip(chars).flatten.join('')
end

def double_consonants(str)
  arr = ('a'..'z').to_a
  arr2 = ('A'.. 'Z').to_a
  arr = arr.reject{|char| char =~ /[aeiou]/ }
  arr2 = arr2.reject{|char| char =~ /[AEIOU]/ }
  chars = str.chars
  result = []
  chars.each do |char| 
      result << repeater(char) if arr.include?(char) || arr2.include?(char)
      result << char if !arr.include?(char) && !arr2.include?(char)
  end
  result.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""