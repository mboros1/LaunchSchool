
def buy_fruit(arr)
  fruit_arr = []
  arr.each do |f|
    f[1].times { fruit_arr << f[0] }
  end
  fruit_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
