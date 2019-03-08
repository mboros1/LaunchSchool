
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.each do |ar|
  ar.select! { |x| x % 3 == 0 }
end

p arr
