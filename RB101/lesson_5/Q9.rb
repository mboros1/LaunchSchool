
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.each do |ar|
  ar.sort! { |a,b| b <=> a }
end

p arr

