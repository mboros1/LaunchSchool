
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

even_arr = []

arr.select! do |hsh|
  selection = true
  hsh.each_value do |a|
    if a.length != a.select { |x| x.even? }.length
      selection = false
    end
  end
  selection
end

p arr
