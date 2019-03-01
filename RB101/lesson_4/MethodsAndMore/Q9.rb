m = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

p m

# [nil, 'bear']
# map takes return value of each block iteration and returns an array.
# because 'ant' has length 3, it will not enter the if statement, and since there's no else it returns nil.
# 'bear' has length 4, so it enters the if statement and returns 'bear'