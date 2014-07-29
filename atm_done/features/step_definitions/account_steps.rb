require File.join(File.dirname(__FILE__), '../../lib/account')

Given(/^I have \$(\d+) in my account$/) do |starting_balance|
  @account = Account.new(starting_balance)
end

When(/^I request my account balance$/) do
  @retrieved_balance = @account.balance
end

# When(/^I deposit \$(\d+)$/) do |deposit_amount|
  # @account.deposit(deposit_amount)
# end

Then(/^a balance of \$(\d+) is reported$/) do |expected_balance|
  assert_equal expected_balance.to_f, @retrieved_balance
end

# When(/^I withdraw \$(\d+)$/) do |withdrawal_amount|
#Exercise 2
  # @withdrawl_result = @account.withdraw(withdrawal_amount)
# end


When(/^I (deposit|withdraw) \$(\d+)$/) do |action, amount|
#Exercise 3
	if action == 'withdraw'
		@withdrawal_result = @account.withdraw(amount)
	end
	if action == 'deposit'
		@account.deposit(amount)
	end
end

When(/^I do these transactions$/) do |table|
# Exercise 4
	values = table.rows
	values.each do |row|
		action = row[0]
		amount = row[1]
		#puts 'DEBUG: action = ' + action
		#puts 'DEBUG: amount = ' + amount
		steps %{
			When I #{action} #{amount}
		}
	end
end
