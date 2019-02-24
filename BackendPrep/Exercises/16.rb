a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.each_index {|i| a[i] = a[i].split(' ')}

p a.flatten