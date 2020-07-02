"hi friend"

def reverse_sentence(phrase)
  phrase = phrase.to_s
  arr = []
  phrase = phrase.split
  arr = phrase.reverse
  phrase = arr.join(" ")
  phrase
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


