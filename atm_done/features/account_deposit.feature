Feature: Account Deposit
  As a bank customer
  I want to deposit funds
  So that I can safely store more funds in my bank account.

  Scenario: Simple Funds Deposit
    Given I have $0 in my account
    When I deposit $100
    And I request my account balance 
    Then a balance of $100 is reported

