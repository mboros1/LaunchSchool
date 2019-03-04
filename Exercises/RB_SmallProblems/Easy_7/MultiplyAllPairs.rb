
def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each do |x|
    arr2.each do |y|
      result << x * y
    end
  end
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]