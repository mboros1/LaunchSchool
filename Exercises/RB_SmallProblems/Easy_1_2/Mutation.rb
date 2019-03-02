array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# the << operator does not make a new object, so array1 and array2 should be the same

array1.each_index do |i|
  puts array1[i] == array2[i]
end