[1, 2, 3].reject do |num|
  puts num
end

# [1, 2, 3], returns each element where the block return value is falsey, puts is nil which is falsey