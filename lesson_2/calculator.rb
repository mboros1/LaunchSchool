# asks user for two numbers, operator, returns answer
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

prompt("Welcome to Calculator!")

loop do
  prompt("What's the first number?")
  number1 = gets().chomp()

  prompt("What's the second number?")
  number2 = gets().chomp()

  prompt("What operation would you like to perform? (+,-,/,*)")
  operator = gets().chomp()

  result = case operator
           when '+'
             number1.to_i() + number2.to_i()
           when '-'
             number1.to_i() - number2.to_i()
           when '*'
             number1.to_i() * number2.to_i()
           when '/'
             number1.to_f() / number2.to_f()
           else
             "error!"
           end

  prompt("The result is #{result}")
end
