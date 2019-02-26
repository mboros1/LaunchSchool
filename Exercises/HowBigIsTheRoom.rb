
=begin
Enter the length of the room in meters:
    10
Enter the width of the room in meters:
    7
The area of the room is 70.0 square meters (753.47 square feet).
=end

puts "Enter the length of the room in meters:"
length = gets.chomp
puts "Enter the width of the room in meters:"
width = gets.chomp
area_m = (length * width).round(2)
area_ft = (length * width * 10.7639).round(2)
puts "The are of the room is #{area_m} square meters (#{area_ft} square feet)."
