
def show_multiplicative_average(arr)
  prod = arr.inject(1) { |p, x| p * x }
  result = (prod.to_f / arr.size).round(3)
  puts "The result is #{result}"
end

show_multiplicative_average([3, 5])

show_multiplicative_average([6])

show_multiplicative_average([2, 5, 7, 11, 13, 17])
