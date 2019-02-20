# 1. Creates a cross product of the 2 arrays. arr.first = ['b',1], arr.first.last = 1
arr = ['b', 'a']
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

# 2. arr product is [['b', [1,2,3]], ['a', [1,2,3]]], deletes second sub array from first sub array
arr = ['b', 'a']
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
