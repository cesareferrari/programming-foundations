def prompt(message)
  puts "=> #{message}"
end

prompt "Welcome to Mortgage Calculator!"

loop do # main loop

  prompt "Enter the loan amount in dollars:"

  amount = ''
  loop do
    amount = gets.chomp
    if amount.empty? || amount.to_f <= 0
      prompt "Must enter a valid amount."
    else
      break
    end
  end

  prompt "Enter the Annual Percentage Rate (APR). Ex: enter 5.2 for 5.2% APR"

  apr = ''
  loop do
    apr = gets.chomp
    if apr.empty? || apr.to_f <= 0
      prompt "Must enter a valid amount."
    else
      break
    end
  end

  prompt "Enter the Loan Duration in years"

  duration_years = ''
  loop do
    duration_years = gets.chomp

    if duration_years.empty? || duration_years.to_i <= 0
      prompt "Must enter a valid duration"
    else
      break
    end
  end

  annual_rate = apr.to_f / 100
  monthly_rate = annual_rate / 12
  duration_months = duration_years.to_i * 12

  monthly_payment = amount.to_f * (monthly_rate / (1 - (1 + monthly_rate)** -duration_months.to_i))

  prompt "Your monthly payment is: $#{format("%02.2f", monthly_payment)}"

  prompt "Loan amount: $#{amount}"
  prompt "Annual APR: #{apr}%"
  prompt "Duration years: #{duration_years}"

  prompt "Another calculation? (Y/N)"

  answer = gets.chomp

  break unless answer.downcase.start_with?('y')

end

prompt "Thank you for using Mortgage Calculator. Good bye!"
