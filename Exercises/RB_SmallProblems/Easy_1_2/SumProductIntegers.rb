
def sum(n)
  sum_total = 0
  (1..n).each do |x|
    sum_total += x
  end
  sum_total
end

def product(n)
  product_total = 1
  (1..n).each do |x|
    product_total *= x
  end
  product_total
end

def prompt(sentence)
  puts ">>> #{sentence}"
end

n = nil
loop do
  prompt "Please enter an integer greater than 0:"
  n = gets.chomp
  break if n.to_i.to_s == n
  prompt "Invalid entry."
end

n = n.to_i
choice = nil

loop do
  prompt "Enter 's' to compute the sum, or 'p' to compute the product"
  choice = gets.chomp
  break if %w(p s).include? choice
  prompt "Invalid entry."
end

answer = choice == 'p' ? product(n) : sum(n)
operator = { 'p' => 'product', 's' => 'sum' }

prompt "The #{operator[choice]} of the integers between 1 and #{n} is #{answer}."
