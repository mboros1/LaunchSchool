# convert from degrees to seconds
# use divmod operator to calculate degrees, minutes, seconds

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = 60 * 60
DEGREE = "\xC2\xB0"

def dms(degree)
  s = (degree * SECONDS_PER_DEGREE).to_i
  deg, s = s.divmod(SECONDS_PER_DEGREE)
  m, s = s.divmod(SECONDS_PER_MINUTE)
  format(%(%d%s%02d'%02d"), deg,DEGREE,m,s)
end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")