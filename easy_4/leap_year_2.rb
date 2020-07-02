def leap_year?(year)
  return true if year <= 1752 && year % 4 == 0
  (year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
end

p leap_year?(2_016) == true
p leap_year?(2_015) == false
p leap_year?(2_100) == false
p leap_year?(2_400) == true
p leap_year?(240_000) == true
p leap_year?(240_001) == false
p leap_year?(2_000) == true
p leap_year?(1_900) == false
p leap_year?(1_752) == true
p leap_year?(1_700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
