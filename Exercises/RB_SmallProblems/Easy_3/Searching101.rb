prompt_num = %w(1st 2nd 3rd 4th 5th last)

def prompt(sentence)
  puts ">>> #{sentence}"
end

num_arr = []
(0..5).each do |n|
  prompt "Enter the #{prompt_num[n]} number:"
  num = gets.chomp.to_i
  num_arr << num
end

if num_arr[0..-2].include? num_arr.last
  prompt "The number #{num_arr.last} appears in #{num_arr}."
else
  prompt "The number #{num_arr.last} does not appear in #{num_arr}."
end
