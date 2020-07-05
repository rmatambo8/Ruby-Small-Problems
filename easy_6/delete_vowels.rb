def remove_vowels(str)
  vowels = ['a','e','i','o','u','A','E','I','O',"U"]
  str.map! do |x|
    x = x.chars
    y = []
    x.each { |letter| y << letter if !vowels.include?(letter)}
    y.join
  end
  str
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']