def triangle(n)
  row = 1
  while row <= n
    white_space = n - row
    white_space.times {|_| print ' '}
    row.times {|_| print '*'}
    puts ''
    row += 1
  end
end

triangle 5
triangle 9