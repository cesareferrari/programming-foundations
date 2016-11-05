require 'yaml'

MESSAGES = YAML.load_file('mortgage_calculator_messages.yaml')

def prompt(message, *args)
  puts "==> #{format(MESSAGES[message], *args)}"
end

def valid_input?(value, can_be_a_float = true)
  return value.to_f > 0 if can_be_a_float
  value.to_i > 0
end

prompt 'welcome'
name = gets.chomp

name = %w(Stranger Honey Buddy).sample if name.empty?

loop do
  amount = nil
  loop do
    prompt('enter_loan_amount', name)
    amount = gets.chomp
    break if valid_input?(amount)
    prompt 'valid_amount'
  end

  yearly_interest_rate = nil
  loop do
    prompt 'enter_apr'
    yearly_interest_rate = gets.chomp
    break if valid_input?(yearly_interest_rate)
    prompt 'valid_interest'
  end

  duration_years = nil
  loop do
    prompt 'enter_duration'
    duration_years = gets.chomp

    break if valid_input?(duration_years, false)
    prompt 'valid_duration'
  end

  duration_months = duration_years.to_i * 12
  monthly_interest_rate = yearly_interest_rate.to_f / 100 / 12
  monthly_payment =
    amount.to_i *
    (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-duration_months))

  prompt('amount', amount)
  prompt('apr', yearly_interest_rate)
  prompt('duration', duration_years.to_i, duration_months)
  prompt('payment', monthly_payment)

  prompt 'perform_another'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('thanks', name)
