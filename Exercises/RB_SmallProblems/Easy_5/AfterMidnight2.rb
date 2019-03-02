
MINUTES_IN_DAY = 24 * 60

def parse_time(time)
  time.split(":").map(&:to_i)
end

def after_midnight(time)
  h, m = parse_time time
  (h * 60 + m) % MINUTES_IN_DAY
end

def before_midnight(time)
  m = after_midnight(time)
  (MINUTES_IN_DAY - m) % MINUTES_IN_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0