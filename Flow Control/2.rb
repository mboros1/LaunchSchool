def to_upper_if_longer_then_10(word)
  word.length > 10 ? word.upcase : word
end

puts to_upper_if_longer_then_10('asdfd adfg sdfgh dsfg sdfg sdfg dsfg ')