
def bank_switch(n)
  arr = Array::new(n,false)
  (1..n).each do |i|
    (i..n).step(i) do |idx|
      arr[idx-1]= !arr[idx-1]
    end
  end
  
  result = []

  (0..n-1).each do |x|
    if arr[x]
      result << x+1
    end
  end

  result
end

p bank_switch(5)
p bank_switch(10)
