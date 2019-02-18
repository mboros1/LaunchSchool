puts "How old are you?"
age = gets.chomp.to_i

x = 10
4.times do
  puts "In #{x} years you will be:"
  puts age + x
  x += 10
end