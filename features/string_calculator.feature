Feature: String Calculator

  Scenario: Adding two numbers
    Given I have a string calculator
    When I add "1,2"
    Then the result should be 3

  Scenario: Adding multiple numbers
    Given I have a string calculator
    When I add "1,2,3,4"
    Then the result should be 10
