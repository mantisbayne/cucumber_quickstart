Feature: Balance Inquiry
  As a bank customer
  I want to check my balance
  So that I can verify my account balance

  Scenario: Checking the current balance on an unused account
    Given I have $0 in my account
    When I request my account balance
    Then a balance of $0 is reported

  Scenario: Checking the current balance a used account
    Given I have $345 in my account
    When I request my account balance
    Then a balance of $345 is reported
