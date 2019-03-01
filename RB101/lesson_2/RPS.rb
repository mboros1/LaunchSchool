def prompt message
  puts "=> #{message}"
end

CHOICES = %w(rock paper scissors)

loop do
  choice = ''
  loop do
    prompt("Choose one: #{CHOICES.join(', ')}")
    choice = gets.chomp
    if CHOICES.include? choice
      break
    else
      prompt "Not a valid choice."
    end
  end

  computer_choice = CHOICES.sample

  prompt "You chose #{choice}, computer chose #{computer_choice}."
  if choice == computer_choice
    prompt "Tie!"
  elsif (choice == 'rock' && computer_choice == 'scissors') ||
      (choice == 'paper' && computer_choice == 'rock') ||
      (choice == 'scissors' && computer_choice == 'paper')
    prompt "You win!"
  else
    prompt "You lost!"
  end

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
