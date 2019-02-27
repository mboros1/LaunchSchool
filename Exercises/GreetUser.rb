# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

def greet(name)
  if name[-1] == "!"
    puts "HELLO #{name.upcase.chomp('!')}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

puts "What is your name?"
name = gets.chomp
greet(name)
