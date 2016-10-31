def prompt(message)
  puts "==> #{message}"
end

def valid_float?(value)
  value.to_f > 0
end

def valid_integer?(value)
  value.to_i > 0
end

prompt "Welcome to Mortgage Calculator"

loop do
  amount = ''
  loop do
    prompt "Enter the loan amount in dollars:"
    amount = gets.chomp
    break if valid_float?(amount)
    prompt "Please, enter a valid amount (example: '12000', '870.75')."
  end

  yearly_interest_rate = ''
  loop do
    prompt "Enter the yearly interest rate (APR):"
    yearly_interest_rate = gets.chomp
    break if valid_float?(yearly_interest_rate)
    prompt "Please, enter a valid interest rate (example: '2.5' for '2.5%')."
  end

  duration_years = ''
  loop do
    prompt "Enter the loan duration in years"
    duration_years = gets.chomp

    break if valid_integer?(duration_years)
    prompt "Please, enter a valid duration period in years (example: '2', '10')."
  end

  duration_months = duration_years.to_i * 12
  monthly_interest_rate = yearly_interest_rate.to_f / 100 / 12
  monthly_payment = amount.to_i * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-duration_months))

  prompt "Loan amount: #{amount}"
  prompt "Yearly interest rate (APR): #{yearly_interest_rate}"
  prompt "Duration Years: #{duration_years} (#{duration_months} months)"
  prompt "Your monthly payment is: #{format('%.2f', monthly_payment)}"

  prompt "Do you want to perform another calculation? (Y/N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for using Mortgage Calculator"
