# asks user for two numbers, operator, returns answer
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

prompt("Welcome to Calculator! Enter your name:")
name = ''

loop do
  name = gets().chomp()
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hello #{name}!")

number1, number2 = nil
loop do
  loop do
    prompt("What's the first number?")
    number1 = gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt("Hmm... Doesn't seem to be a valid number")
    end
  end

  loop do
    prompt("What's the second number?")
    number2 = gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("Hmm.. Doesn't seem to be a valid number")
    end
  end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    + (add)
    - (subtract)
    / (divide)
    * (multiply)
  MSG
  prompt(operator_prompt)
  result = nil
  loop do
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
               nil
             end
    break if result
    prompt("Please select +,-,/, or *")
  end
  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation? (Y to calculate again)")

  answer = gets().chomp()
  break unless answer.downcase().start_with?('y')
end