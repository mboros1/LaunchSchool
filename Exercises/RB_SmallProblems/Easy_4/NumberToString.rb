
def integer_to_string(n)
  return '0' if n == 0
  divisor = 1
  str = ''
  while n / divisor > 0
    d = (n % (divisor * 10)) / divisor
    str += ('0'.ord + d).chr
    divisor *= 10
  end
  str.reverse
end


p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'