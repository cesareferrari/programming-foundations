require 'yaml'

MESSAGES = YAML.load_file('mortgage_calculator_messages.yaml')

def prompt(message, extra = '')
  if MESSAGES[message]
    puts "==> #{MESSAGES[message]} #{extra}"
  else
    puts "==> #{message}"
  end
end

def valid_float?(value)
  value.to_f > 0
end

def valid_integer?(value)
  value.to_i > 0
end

prompt 'welcome'

loop do
  amount = ''
  loop do
    prompt 'enter_loan_amount'
    amount = gets.chomp
    break if valid_float?(amount)
    prompt 'valid_amount'
  end

  yearly_interest_rate = ''
  loop do
    prompt 'enter_apr'
    yearly_interest_rate = gets.chomp
    break if valid_float?(yearly_interest_rate)
    prompt 'valid_interest'
  end

  duration_years = ''
  loop do
    prompt 'enter_duration'
    duration_years = gets.chomp

    break if valid_integer?(duration_years)
    prompt 'valid_duration'
  end

  duration_months = duration_years.to_i * 12
  monthly_interest_rate = yearly_interest_rate.to_f / 100 / 12
  monthly_payment = amount.to_i * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-duration_months))

  prompt('amount', amount)
  prompt('apr', yearly_interest_rate)
  prompt "Duration Years: #{duration_years.to_i} (#{duration_months} months)"
  prompt('payment', format('%.2f', monthly_payment))

  prompt 'perform_another'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'thanks'
