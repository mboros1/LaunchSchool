
def string_to_integer str
  int = 0
  str.reverse.chars.each_with_index do |c, i|
    x = c.ord - '0'.ord
    int += x * (10**i)
  end
  int
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570