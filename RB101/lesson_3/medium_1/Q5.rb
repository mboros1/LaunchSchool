limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1,limit)
puts "result is #{result}"

# cannot use a local variable from an outer scope inside of a method
# can fix by adding a limit parameter to the method and passng limit to it