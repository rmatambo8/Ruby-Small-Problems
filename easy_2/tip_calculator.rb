print "what is the bill?"
bill = gets.chomp.to_f
print "What is the tip percentage?"
tip_perecentage = gets.chomp.to_f/100

puts "The tip is $#{(bill*tip_perecentage).round(2)}"
puts "The total is $#{(bill + bill*tip_perecentage).round(2)}"