
def string_to_signed_integer str
  int = 0
  str.reverse.chars.each_with_index do |c, i|
    if '-' == c
      int *= -1
    elsif '+' == c
      int *= 1
    else
      x = c.ord - '0'.ord
      int += x * (10**i)
    end
  end
  int
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100