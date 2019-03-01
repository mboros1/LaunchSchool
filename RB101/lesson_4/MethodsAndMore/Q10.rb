[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# [1,nil,nil] all the numbers >1 will evaluate puts num, which returns nil