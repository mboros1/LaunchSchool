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

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true