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

def signed_integer_to_string(n)
  sign = ''
  if n < 0
    sign = '-'
    n *= -1
  elsif n > 0
    sign = '+'
  end
  sign + integer_to_string(n)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'