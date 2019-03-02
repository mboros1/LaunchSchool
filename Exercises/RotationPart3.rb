def rotate_array(arr)
  if arr.size <= 1
    return arr
  end
  rotated_arr = []
  rotated_element = arr.first
  arr[1, arr.size].each do |e|
    rotated_arr << e
  end
  rotated_arr << rotated_element
end

def rotate_rightmost_digits(num, n)
  if n == 1
    return num
  end
  arr = num.to_s.chars
  (arr[0, arr.size - n] + rotate_array(arr[arr.size - n, arr.size]))
      .join('').to_i
end

def max_rotation(num)
  num_len = num.to_s.chars.size
  num_len.downto(2) do |n|
    #p num
    num = rotate_rightmost_digits(num, n)
  end
  num
end

# p max_rotation(735291)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
# p max_rotation(8_703_529_146)