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
    Given I have $1000 in my account
    When I withdraw $2000
    And I request my account balance 
    Then an error OVERDRAWN appears  

