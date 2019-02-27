# returns all positive factors of a number
# works for negative numbers, but only returns positive factors
def factors(number)
  divisor = number
  factors = []
  while divisor != 0
    # not the cleanest way to do it, will return the same results
    # if we take the abs value of the number, removing the ternary operator
    factors << number / divisor if number % divisor == 0
    divisor > 0 ? divisor -= 1 : divisor += 1
  end
  factors
end

p factors(10)
p factors(-10)
p factors(-101)
p factors(34534643)
p factors(-345346)