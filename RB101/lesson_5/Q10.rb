
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  hsh.each_key { |k| hsh[k] += 1 }
  hsh
end

p arr

