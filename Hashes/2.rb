# merge returns a new array merge! modifies the array in place

arr1 = {a:1,b:2,c:3}
arr2 = {d:4,e:5,f:6}

# merge the 2 hashes, printing the return hash
p arr1.merge(arr2)
# original hash is unchanged
p arr1

# use bang modifier to change hash in place
arr1.merge!(arr2)
p arr1