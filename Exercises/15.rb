arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{|s| s.start_with?('s', 'w')}

p arr
