def reverse_words(words)
  arr = []
  arr << words.split.each do|x| 
    if x.length > 4 
      x.reverse!
    end
  end
  arr = arr.join(" ")
  arr
end

puts reverse_words( "hi family of three")
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School') 