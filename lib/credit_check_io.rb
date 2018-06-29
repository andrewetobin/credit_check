require_relative 'credit_check'

credit_check = CreditCheck.new

puts "Please provide a credit card number with no spaces or dashes"
response = gets.chomp.to_i

p credit_check.validation_output(response)
