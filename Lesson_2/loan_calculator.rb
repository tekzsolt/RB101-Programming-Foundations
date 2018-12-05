# Methods
def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def monthly_payment(p, j, n)
  p * (j / (1 - (1 + j)**-n))
end

def prompt(message)
  puts "=> #{message}"
end

# Loan Calculator
prompt("Welcome to the Loan Calculator!")
puts

loop do # main loop
  prompt("Please provide the Loan amount:")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if loan_amount.empty? || loan_amount.to_f < 0 || !valid_number?(loan_amount)
      prompt("That's not a valid number! Note: number has to be positive.")
    else
      break
    end
  end

  prompt("Please provide the Annual Percentage Rate (APR):")

  apr = ''
  loop do
    apr = gets.chomp
    if apr.empty? || apr.to_f < 0 || valid_number?(apr) != true
      prompt("That's not a valid number! Note: number has to be positive.")
    else
      break
    end
  end

  prompt("Please provide the Loan duration in year:")

  duration = ''
  loop do
    duration = gets.chomp
    if duration.empty? && duration.to_i < 0 || valid_number?(duration) != true
      prompt("That's not a valid number! Note: number has to be positive.")
    else
      break
    end
  end

  monthly_interest_rate = (apr.to_f / 100) / 12
  loan_amount = loan_amount.to_f
  duration_in_month = duration.to_i * 12

  result = monthly_payment(loan_amount, monthly_interest_rate, duration_in_month)

  prompt("Your monthly payment will be: $#{format('%02.3f', result)}")
  puts

  prompt("Would you like to do another loan calculation? (Y / N)")

  choice = ''
  loop do
    choice = gets.chomp.downcase
    if choice == 'n' || choice == 'no'
      prompt("Thanks for using the loan calculator. Good bye!")
      break
    elsif choice == 'y' || choice == 'yes'
      break
    else
      prompt("Please answer with 'Y' or 'N'.")
    end
  end

  break if choice == 'n' || choice == 'no'
end
