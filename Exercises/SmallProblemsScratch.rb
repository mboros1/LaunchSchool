# #
# Easy 1
# #

# Repeat Yourself

def repeat(phrase, num)
  num.times do
    puts phrase
  end
end

# repeat('hello', 4)

# Odd

def is_odd?(num)
  num % 2 == 0 ? false : true
end

=begin
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
=end

def digit_list(nums)
  nums.to_s.chars.map! { |x| x.to_i }
end

=begin
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
=end

# How Many?

def count_occurrences(arr)
  counter = {}

  arr.each do |e|
    if counter.key? e
      counter[e] += 1
    else
      counter[e] = 1
    end
  end

  counter.each { |x, i| puts "#{x} => #{i}" }
end

=begin
vehicles = [
    'car', 'car', 'truck', 'car', 'SUV', 'truck',
    'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)=end
=end

# Reverse It

def reverse_sentence(sentence)
  sentence.split.reverse.join ' '
end

=begin
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
=end

def reverse_words(sentence)
  words = sentence.split
  words.map! do |word|
    if word.length > 4
      word.reverse
    else
      word
    end
  end
  words.join ' '
end

=begin
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
=end

# Stringy Strings

def stringy(num)
  string = ""
  num.times do
    if string.length % 2 == 1
      string << "0"
    else
      string << "1"
    end
  end
  string
end

=begin
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
=end

# Array Average

def average(arr)
  sum = 0
  arr.each do
    |x|
    sum += x
  end
  sum / arr.length
end

=begin
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
=end

# Sum of Digits

def sum(num)
  num_chars = num.to_s.chars
  sum = 0
  num_chars.each do |x|
    sum += x.to_i
  end
  sum
end

=begin
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
=end

# What's my Bonus?

def calculate_bonus(salary, bonus_bool)
  if bonus_bool
    salary * 0.5
  else
    0
  end
end

=begin
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
=end

###########################################
# # End of Easy - 1 Set
###########################################


# #
# Easy 2
# #

# How Old is Teddy?

def teddy_age
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
end

# How Big is the Room?

