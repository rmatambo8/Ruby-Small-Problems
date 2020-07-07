DEGREE = "\xC2\xB0"
MINUTES_IN_DEGREE =60
SECOND_IN_MINUTE = 60
def dms(num)
  deg = num % 360
  min = deg % 1.round(2)* MINUTES_IN_DEGREE
  sec = (((num % 1)*60).round(2) % 1)*60.round(3)
  format("%3d#{DEGREE}%02d'%02d\"",deg, min, sec)
end

p dms(30) == %( 30°00'00")
p dms(76.73) == %( 76°43'47")
p dms(254.6) == %(254°35'00")
p dms(93.034773) == %( 93°02'05")
p dms(0)  == %(  0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(  0°00'00")
#further exploration
p dms(400) == %( 40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")