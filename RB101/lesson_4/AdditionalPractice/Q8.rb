numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# in this example, each iteration we are shortening the array so we'll skip elements
# 1,3

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# shortening the array from the end this time
# 1,2