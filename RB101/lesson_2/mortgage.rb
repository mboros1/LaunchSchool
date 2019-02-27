
# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following two things:
# -------------- #
# monthly interest rate
# loan duration in months
# -------------- #
# interest equation
# m = p * (j / (1 - (1 + j)**(-n)))
# -------------- #
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

def prompt(message)
  puts "$$$: #{message}"
end

prompt "Welcome to my Loan Calculator!"
loop do
  prompt "What's your loan amount?"
  loan_amount = gets.chomp.to_i
  prompt "apr"
  apr = gets.chomp.to_f
  prompt "loan duration"
  loan_duration = gets.chomp.to_i

  monthly_payment = loan_amount * (
  (apr / 12) / (1 - (1 + apr / 12)**(-loan_duration * 12))
  )
  prompt monthly_payment.round 2

  prompt "Would you like to calculate another monthly payment? (y/n)"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end
