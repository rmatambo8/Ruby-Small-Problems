=begin
The time of day can be represented as the number of minutes
before or after midnight. If the number of minutes is positive,
the time is after midnight. If the number of minutes is negative,
the time is before midnight.

Write a method that takes a time using this minute-based format
and returns the time of day in 24 hour format (hh:mm).
Your method should work with any integer input.

You may not use ruby's Date and Time classes.
(Understand the problem)
- output a military clock based on the input integer
- convert from integer to time
- illustrate the amount of time

=end

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60
def time_of_day_mine(int)
  result = []
  int = int % MINUTES_PER_DAY # minutes in one day
  int.negative? ? int = 1440 - int : int
  minutes = int % MINUTES_PER_HOUR # minutes
  hours = (int - minutes) /60
  format("%02d:%02d", hours, minutes)
end


p time_of_day_mine(0) == "00:00"
p time_of_day_mine(-3) == "23:57"
p time_of_day_mine(35) == "00:35"
p time_of_day_mine(-1437) == "00:03"
p time_of_day_mine(3000) == "02:00"
p time_of_day_mine(800) == "13:20"
p time_of_day_mine(-4231) == "01:29"


=begin
def time_of_day_mine(int)
  return "00:00" if int == 0
  if int < -1440
    in_24 = (int/1440).to_i.abs
    in_24.times { int += 1440}
  elsif int > 1440
    num = (int/1440).to_i
    num.times { int -= 1440 }
  else 
    int = int
  end
  if int.positive? == true
    start_time = 0 
    added = int
  elsif int.negative? == true
    start_time = 1440
    added = int
  end
  current_time = start_time + added
  minutes = current_time % 60
  hours = (current_time - minutes) / 60 

  if minutes.to_s.length == 1
    minutes = "0" << minutes.to_s
  end
  if hours.to_s.length == 1 
    hours = '0' << hours.to_s
  end

  "#{hours}:#{minutes}"
end

# p time_of_day_mine(0) == "00:00"
# p time_of_day_mine(-3) == "23:57"
# p time_of_day_mine(35) == "00:35"
# p time_of_day_mine(-1437) == "00:03"
# p time_of_day_mine(3000) == "02:00"
# p time_of_day_mine(800) == "13:20"
# p time_of_day_mine(-4231) == "01:29"


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  binding.pry
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  binding.pry
  format('%02d:%02d', hours, minutes)
  binding.pry
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
=end