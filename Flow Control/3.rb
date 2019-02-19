puts 'Choose a number between 0 and 100'
number = gets.to_i

answer = case
  when number >= 0 && number <= 50
    'number between 0 and 50'
  when number > 50 && number <= 100
    'number between 51 and 100'
  else
    'did not input a number between 0 and 100 you failed'
end

puts answer