
def get_suffix(cent)
  # if ends with 10-19, always 'th'
  return 'th' if cent % 100 / 10 == 1
  last_digit = cent % 10
  # used an array to return suffix by index, being cute but probably not as readable
  %w(th st nd rd th th th th th th)[last_digit]
end

def get_century(year)
  cent = year / 100
  if year % 10 == 0
    cent
  else
    cent + 1
  end
end

def century(year)
  cent = get_century year
  suffix = get_suffix cent
  cent.to_s + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'