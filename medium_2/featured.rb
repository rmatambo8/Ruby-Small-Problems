=begin

A featured number (something unique to this exercise) 
is an odd number that is a multiple of 7, 
and whose digits occur exactly once each.
So, for example, 49 is a featured number,
but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), 
and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

 Rules 
  - an odd number
  - multiple of 7
  - digits occur only once
  - if number >= than 10 billion - 1 , error.

Examples:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999)

Alg 
    - def a method that checks for featured number or not
      - number is odd?
      - number is a multiple of 7
      - digits are uniq?
    - return nil for edge case - greater than 10 bil - 1
    - loop through increasing numbers until it is a featured number
      - increase counter by 1 if not a multiple of 7
      - increase counter by 7 if a multiple of 7
    - break loop when number is featured
    - return featured number.
=end

def is_featured?(num)
    return false if !num.odd?
    return false if num % 7 != 0
    return false if num.digits.uniq != num.digits
    true
end

def featured(num)
  return nil if num >= 9_999_999_999
  counter = num 
  loop do 
    counter += 7 if counter % 7 == 0
    counter += 1 if counter % 7 != 0
    break if is_featured?(counter)
  end
  counter
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)