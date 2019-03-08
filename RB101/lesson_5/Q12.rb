
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort! do |a,b|
  a.select {|x| x % 2 == 1} <=> b.select {|x| x % 2 == 1}
end

p arr
