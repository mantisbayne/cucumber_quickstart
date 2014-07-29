Feature: Account Withdrawal
  As a bank customer
  I want to withdraw funds
  So that I can use my money for something.

  Scenario: Withdrawing an amount less than the current account balance.
    Given I have $1000 in my account
    When I withdraw $200
    And I request my account balance 
    Then a balance of $800 is reported

  Scenario: Withdrawing an amount more than the current account balance.
    Given I have $100 in my account
    When I withdraw $200
    And I request my account balance 
    Then an error is displayed stating that the account is overdrawn

  Scenario: Tests several account transactions
	Given I have $1000 in my account
	When I do these transactions
	| action	| amount	|
	| withdraw	| $200		|
	| withdraw	| $500		|
	| deposit	| $30		|
	When I request my account balance
	Then a balance of $330 is reported