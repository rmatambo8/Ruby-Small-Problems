puts "Enter a noun: "
noun = gets.chomp
puts "Enter a verb: "
verb = gets.chomp
puts "Enter a adjective: "
adjective = gets.chomp
puts "Enter a adverb: "
adverb = gets.chomp

opt_1 = " You #{verb} your #{adjective} #{noun} #{adverb}? That's Hilarious!"
opt_2 = " How can you #{verb} your #{adjective} #{noun} so #{adverb}?"
opt_3 = " You #{adverb} #{verb} your #{adjective} #{noun}? I'm afraid!"

puts [opt_1, opt_2, opt_3].sample

