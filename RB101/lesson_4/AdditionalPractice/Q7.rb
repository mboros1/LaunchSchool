statement = "The Flintstones Rock"

char_counter = {}

statement.chars.each do |c|
  if char_counter.key? c
    char_counter[c] += 1
  else
    char_counter[c] = 1
  end
end

p char_counter