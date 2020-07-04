def repeater(str)
  chars = str.chars
  chars = chars.zip(chars).flatten.join('')
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

