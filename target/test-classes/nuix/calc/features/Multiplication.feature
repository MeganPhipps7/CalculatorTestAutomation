@multiplication @regression
Feature: Multiplication

  # 2 number: positive, negative and decimal calculations

  Scenario: Multiplying two positive integers
    Given The user is on the Calculator app
    When The user performs the following operation "5 × 3"
    Then The user verifies the result is "15"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying two negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-9 × -4"
    Then The user verifies the result is "36"

  Scenario: Multiplying one positive and one negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-8 × 2"
    Then The user verifies the result is "-16"

  Scenario: Multiplying two positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "0.4 × 0.8"
    Then The user verifies the result is "0.32"

  #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying two negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-0.4 × -0.8"
    Then The user verifies the result is "0.32"

  Scenario: Multiplying one positive and one negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "-373.8 × 0.02"
    Then The user verifies the result is "-7.476"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying 1 positive integer and 1 negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "98 × -.0856"
    Then The user verifies the result is "-8.3888"

  Scenario: Multiplying 1 with 1
    Given The user is on the Calculator app
    When The user performs the following operation "1 × 1"
    Then The user verifies the result is "1"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying by 1 with another number
    Given The user is on the Calculator app
    When The user performs the following operation "1 × -0.78"
    Then The user verifies the result is "-0.78"


    # multi number: positive, negative, and decimal calculations

  Scenario: Multiplying multiple positive integers
    Given The user is on the Calculator app
    When The user performs the following operation "8 × 2 × 2 × 6 × 1 × 2 × 1 × 4"
    Then The user verifies the result is "1536"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying multiple negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-88 × -32 × -5 × -16 × -3 × -90 × -1 × -2"
    Then The user verifies the result is "132464640"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying multiple positive and negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-34 × 9 × -232 × 843 × -21 × 9 × -1 × 239"
    Then The user verifies the result is "2.70331523e+12"

  Scenario: Multiplying multiple positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "4.8 × 2.3 × 2.2 × 5.3 × 2.9992 × 2.32 × 233.32 × 4.0"
    Then The user verifies the result is "835935.936"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying multiple negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-384.8 × -2.3 × -472.2 × -238.3 × -2.9992 × -2.32 × -233.32 × -4.0"
    Then The user verifies the result is "6.46722984e+11"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying multiple positive and negative decimals and integers
    Given The user is on the Calculator app
    When The user performs the following operation "384.8 × -2 × 472.2 × 238 × 2.99 × -3289 × 233.32 × -9452.0"
    Then The user verifies the result is "-1.87576635e+18"


    # 9 digit positive, negative, and decimal calculations

    #passes in staging
  Scenario: Multiplying 2 nine digit integers
    Given The user is on the Calculator app
    When The user performs the following operation "749274091 × 192634062"
    Then The user verifies the result is "1.44335712e+17"

    #Fails in prod due to rounding error
  Scenario: Multiplying 2 nine digit positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "943.214093 × 0.999999999"
    Then The user verifies the result is "943.214092"

    #Fails in prod due to rounding error
  Scenario: Multiplying 2 nine digit negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-943.214093 × -.999999999"
    Then The user verifies the result is "943.214092"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying multiple nine digit numbers
    Given The user is on the Calculator app
    When The user performs the following operation "-943.814093 × 0.999999999 × 2378.22999 × -194000001 × 234323211"
    Then The user verifies the result is "1.02036922e+23"

    #rounding
  #Fails in prod due to rounding error
  Scenario: Validating rounded up decimal answer
    Given The user is on the Calculator app
    When The user performs the following operation "-99898869.48 × .02187"
    Then The user verifies the result is "-2184788.28"

    # multi step problems
  Scenario: Multiplying two positive integers then Multiplying a third
    Given The user is on the Calculator app
    When The user performs the following operation "12 × 81"
    Then The user verifies the result is "972"
    And The user performs the following operation "× 19"
    Then The user verifies the result is "18468"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying two negative integers then Multiplying a negative third
    Given The user is on the Calculator app
    When The user performs the following operation "-84 × -39"
    Then The user verifies the result is "3276"
    And The user performs the following operation "× -46"
    Then The user verifies the result is "-150696"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying two negative integers then Multiplying a third positive
    Given The user is on the Calculator app
    When The user performs the following operation "-84 × -39"
    Then The user verifies the result is "3276"
    And The user performs the following operation "× 46"
    Then The user verifies the result is "150696"

  Scenario: Multiplying two positive decimals then Multiplying a third positive
    Given The user is on the Calculator app
    When The user performs the following operation "3.32 × 57.223"
    Then The user verifies the result is "189.98036"
    And The user performs the following operation "× 4.6"
    Then The user verifies the result is "873.909656"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying two negative decimals then Multiplying a third negative
    Given The user is on the Calculator app
    When The user performs the following operation "-23.2372 × -3.22"
    Then The user verifies the result is "74.823784"
    And The user performs the following operation "× -5.9"
    Then The user verifies the result is "-441.460326"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying two negative decimals then Multiplying a third positive
    Given The user is on the Calculator app
    When The user performs the following operation "-3.2 × -7.22"
    Then The user verifies the result is "23.104"
    And The user performs the following operation "× 5.9"
    Then The user verifies the result is "136.3136"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multi step calculation with positive, negative, and decimal numbers
    Given The user is on the Calculator app
    When The user performs the following operation "-23.23 × 47"
    Then The user verifies the result is "-1091.81"
    And The user performs the following operation "× -8.00"
    Then The user verifies the result is "8734.48"
    And The user performs the following operation "× -6"
    Then The user verifies the result is "-52406.88"
    And The user performs the following operation "× 7.7"
    Then The user verifies the result is "-403532.976"
    And The user performs the following operation "× -3"
    Then The user verifies the result is "1210598.93"


    # zero scenarios
  Scenario: Multiplying 0 by 0
    Given The user is on the Calculator app
    When The user performs the following operation "0 × 0"
    Then The user verifies the result is "0"

  Scenario: Multiplying 0 with a positive integer
    Given The user is on the Calculator app
    When The user performs the following operation "0 × 7392"
    Then The user verifies the result is "0"

  Scenario: Multiplying 0 with a negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-7392 × 0"
    Then The user verifies the result is "0"

  Scenario: Multiplying 0 with a positive and negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-7392 × 0 × 378"
    Then The user verifies the result is "0"

  Scenario: Multiplying 0 with a positive decimal
    Given The user is on the Calculator app
    When The user performs the following operation "0 × 73.92"
    Then The user verifies the result is "0"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Multiplying 0 with a negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "0 × -73.92"
    Then The user verifies the result is "0"

  Scenario: Multiplying 0 with a positive and negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-73.92 × 3.78 × 0"
    Then The user verifies the result is "0"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  #passes in staging but fails manually as there are many errors along the way
  Scenario: Multiplying 0 to positive, negative, and decimal numbers
    Given The user is on the Calculator app
    When The user performs the following operation "0 × -73.92 × 3 × -4 × 2.9"
    Then The user verifies the result is "0"

  Scenario: Multiplying 0 multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "0 × 0 × 0 × 0 × 0 × 0 × 0 × 0 × 0 × 0"
    Then The user verifies the result is "0"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  # passes in staging but fails manually with many errors along the way
  Scenario: Multiplying multiple numbers with 0
    Given The user is on the Calculator app
    When The user performs the following operation "-8 × 4.2 × 0 × -6 × -1.2 × 2.8 × 1 × -4"
    Then The user verifies the result is "0"

  Scenario: multi step zero calculation
    Given The user is on the Calculator app
    When The user performs the following operation "0 × 0"
    Then The user verifies the result is "0"
    And The user performs the following operation "× 0"
    Then The user verifies the result is "0"
    And The user performs the following operation "× 0"
    Then The user verifies the result is "0"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: multi step zero calculation with numbers
    Given The user is on the Calculator app
    When The user performs the following operation "0 × 4"
    Then The user verifies the result is "0"
    And The user performs the following operation "× 0.8"
    Then The user verifies the result is "0"
    And The user performs the following operation "× -47"
    Then The user verifies the result is "0"














