[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# [1, 2, 3] because return value of 'hi' is truthy