
def interleave(list1, list2)
  n = list2.size
  inter_leave_list = []
  (0..(n - 1)).each do |x|
    inter_leave_list << list1[x]
    inter_leave_list << list2[x]
  end
  inter_leave_list
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
