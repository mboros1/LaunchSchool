
def find_fibonacci_index_by_length(num)
  a = 1
  b = 1
  c = 0
  counter = 2

  loop do
    counter += 1
    c = a + b
    break if c.to_s.size == num
    a = b
    b = c
  end
  counter
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847