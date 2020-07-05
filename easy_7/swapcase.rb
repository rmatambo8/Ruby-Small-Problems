require "pry"
def swapcase(str)
  characters = str.chars.map do |x|
    if x =~ /[a-z]/
      x.upcase!
    elsif x =~ /[A-Z]/
      x.downcase!
    else
      x
    end
  end
  
  characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'