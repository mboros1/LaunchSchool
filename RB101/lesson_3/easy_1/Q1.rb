# expect to print out [1,2,2,3] because #uniq is not destructive

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# outputs the array