
def multiply_list(list1, list2)
  list1.map.with_index do |x, i|
    x * list2[i]
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]