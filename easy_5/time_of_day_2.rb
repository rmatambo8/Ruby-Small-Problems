# Prompt: Write two methods that each take a time of day in 24 hr format 
# and return the number of minutes before and after
# midnight respecfully. Both methods should return a value in the range 
# 0..1439

# code needed

=begin
P (understand the Problem)
  - I am given a time in hours and minutes
  - Convert them to integer values
  - one method should return how much time after midnight
  - another should return time before midnight
  - return range should be in the 0 to 1439 range.
(Examples)
after "24:00" == 0
before "24:00" == 0
after "12:34" == 754
before "12:34" == 686

rules
  - return should be between 0..1439
  - before midnight counts from 1440
  - after midnight counts from 0
  -cannot use date and time methods
  
D (Data structures):
   -Input:str
   -Processing: Arr
   -Output:Int
Approach: 
  - init a new arr. 
  - init a const for the number of min's in a day
  - init a const for the number of hours in a day
  - convert the string into two integers separated by the colon
  - sum the numbers and subtract them from 1440 if necessary. 
=end

def after_midnight(str)
  arr = str.split(':').map{|x| x.to_i}
  sum = (arr[0])*60 + arr[1]
  sum = sum % 1440
  sum
end

def before_midnight(str)
  arr = str.split(':').map{|x| x.to_i}
  sum = 1440 - arr[0]*60 - arr[1]
  sum = sum % 1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0