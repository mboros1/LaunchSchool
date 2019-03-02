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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917