def cleanup(str)
  str.gsub(/\W/, ' ').squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '

def cleanup(str)
  alpha = ('a'..'z').to_a
  chars = str.chars
  chars = chars.map do | char|
    result = char if alpha.include?(char.downcase)
    result = ' ' if !alpha.include?(char.downcase)
    result
  end
  chars.join.squeeze
end
p cleanup("---what's my +*& line?") == ' what s my line '