# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0

puts "What is the bill?"
bill = gets.chomp
puts "What is the tip percentage?"
tip_pct = gets.chomp

tip = tip_pct * bill
total = tip + bill

puts "The tip is #{tip}"
puts "The total is #{total}"
