require 'date'

puts Date.new # When the date class is called with no argument, it outputs -4712-01-01 assumed start date?
puts Date.new(2016) # line 4 will print the first date that starts the year 2016 -> 2016 - 01 - 01
# because month and date were not given, 
puts Date.new(2016, 5) # line 6 date assumes the first date of that class.
puts Date.new(2016, 5, 13) # line 7 date will use all three arguments. there are optional arguments 
# according to docs, the assumed arguments are: 
          # new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date
