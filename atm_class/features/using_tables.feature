Feature: Tables

Scenario: Tests several account transactions
 Given I have $1000 in my account
   When I do these transactions
   | action      | amount |
   | withdraw | $200    |
   | withdraw | $500    |
   | deposit    | $30      |
   When I request my account balance
   Then a balance of $330 is reported
