
DEGREE = "\xC2\xB0"

def dms(degree)
  deg = degree.floor
  m = ((degree - deg) * 60).floor
  s = ((((degree - deg) * 60) - ((degree - deg) * 60).floor) * 60).round(0)
  #p "#{deg} #{m} #{s}"
  %(#{deg.to_s+DEGREE}#{m.to_s.rjust(2,'0')+"'"}#{s.to_s.rjust(2,'0')+'"'})
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")