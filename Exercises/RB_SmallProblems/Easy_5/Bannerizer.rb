
def print_in_box(sentence)
  n = sentence.size
  puts "+-" + "-"*n + "-+"
  puts "| " + " "*n + " |"
  puts "| " + sentence + " |"
  puts "| " + " "*n + " |"
  puts "+-" + "-"*n + "-+"
end

print_in_box 'To boldly go where no one has gone before.'
print_in_box ''