
def center_of(str)
  n = str.size
  if n % 2 == 0
    str[n/2-1..n/2]
  else
    str[n/2]
  end
end



p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
