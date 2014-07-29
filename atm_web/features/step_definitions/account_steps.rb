require File.join(File.dirname(__FILE__), '../../lib/account')

Given(/^I have \$(\d+) in my account$/) do |starting_balance|
  account(starting_balance)
end

When(/^I request my account balance$/) do
  retrieve_balance
end


Then(/^a balance of \$(\d+) is reported$/) do |expected_balance|
  assert_equal expected_balance.to_f, @retrieved_balance
end


Then(/^an error is displayed stating that the account is overdrawn$/) do
  check_result "OVERDRAWN"
end

When(/^I (\w+) \$(\d+)$/) do |action,amount|
# Exercise 3
  if action == 'deposit'
    deposit(amount)
  end
  if action == 'withdraw'
    withdraw(amount)
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
