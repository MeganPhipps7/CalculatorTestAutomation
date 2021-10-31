@combinationEquations @regression
Feature: Combining equations

    # multi number: positive, negative, and decimal calculations

  # failed in prod due to order of operation
  # failed in staging due to order of operation
  Scenario: Adding multiple positive integers
    Given The user is on the Calculator app
    When The user performs the following operation "800 / 2 × 6 + 2 -14 + 0 × 0.32 - 20 / 4.09 × 30"
    Then The user verifies the result is "2241.300733"


    # 9 digit positive, negative, and decimal calculations

  # failed in prod due to order of operation
  # failed in staging because of problem with number 5 and order of operation
  Scenario: Adding 2 nine digit integers
    Given The user is on the Calculator app
    When The user performs the following operation "749274091 × 19263.4062 / -999998888 + -400358232 - 2.38710532"
    Then The user verifies the result is "348915857"

    # multi step problems

  # failed in prod because doesn't understand order of operation and because it does not accept subtracting a negative number
  # failed in staging at first step because issue with multiplication
  Scenario: Adding two positive integers then adding a third
    Given The user is on the Calculator app
    When The user performs the following operation "12 × 81"
    Then The user verifies the result is "972"
    And The user performs the following operation "/ 6"
    Then The user verifies the result is "162"
    And The user performs the following operation "- 62"
    Then The user verifies the result is "100"
    And The user performs the following operation "- -6.2"
    Then The user verifies the result is "106.2"
    And The user performs the following operation "+ 6.2"
    Then The user verifies the result is "112.4"










