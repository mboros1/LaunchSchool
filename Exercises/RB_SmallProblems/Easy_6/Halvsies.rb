def halvsies(arr)
  first_half = []
  second_half = []
  arr.each_with_index do |e, i|
    if i < arr.size.to_f / 2
      first_half << e
    else
      second_half << e
    end
  end
  [first_half,second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]