@BasicFunctionality
  @Calculator
Feature:

    # fails in staging because clicking 5 makes 6 appear
  Scenario: Verifying numbers work
    Given The user is on the Calculator app
    Then The user verifies all numbers work on the calculator

    #fails in prod because it accepts a negative 0
  Scenario: Typing negative zero
    Given The user is on the Calculator app
    When The user performs the following operation "-0"
    Then The user verifies the result is "0"

  Scenario: Typing multiple zeros
    Given The user is on the Calculator app
    When The user performs the following operation "0000000"
    Then The user verifies the result is "0"

  Scenario: Typing multiple zeros before a number
    Given The user is on the Calculator app
    When The user performs the following operation "00000007"
    Then The user verifies the result is "7"

    # fails in staging because of multiplication error
  Scenario: Clicking the clear button multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "3 × 4"
    Then The user verifies the result is "12"
    When The user performs the following operation "CCCCCC"
    Then The user verifies the result is "0"

    #Failed in staging because it truncates decimals
  Scenario: Clicking decimal point multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "4 . . . . . . 3 + 4"
    Then The user verifies the result is "8.3"

    #Failed in staging because it truncates decimals
  Scenario: Clicking decimal point multiple times in the same number
    Given The user is on the Calculator app
    When The user performs the following operation "4 . 7 . 6 + 4"
    Then The user verifies the result is "8.76"

  Scenario: Clicking decimal point multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "4 - - - - 3"
    Then The user verifies the result is "1"

  Scenario: Clicking addition sign multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "4 + + + + + 3"
    Then The user verifies the result is "7"

  Scenario: Clicking division sign multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "12 / / / / 3"
    Then The user verifies the result is "4"

    #failed in staging because due to multiplication error
  Scenario: Clicking multiplication sign multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "2 × × × × 3"
    Then The user verifies the result is "6"