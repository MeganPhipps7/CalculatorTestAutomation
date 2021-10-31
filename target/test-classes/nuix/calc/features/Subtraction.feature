@Subtraction
Feature: Calculator

  # 2 number input calculations: positive, negative and decimal

    #failing in staging due to issue with the number 5
  Scenario: Subtracting two positive integers
    Given The user is on the Calculator app
    When The user performs the following operation "5 - 3"
    Then The user verifies the result is "2"

    # failing in prod because it does not allow subtracting a negative
    # #failing in staging because it does not allow subtracting a negative
  Scenario: Subtracting two negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-9 - -4"
    Then The user verifies the result is "-5"

  Scenario: Subtracting one positive and one negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-8 - 2"
    Then The user verifies the result is "-10"

    #fails in staging due to truncation error/rounding to 0
  Scenario: Subtracting two positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "0.4 - 0.8"
    Then The user verifies the result is "-0.4"

    # failing in prod because it does not allow subtracting a negative
  #failing in staging due to truncation error
  Scenario: Subtracting two negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-0.4 - -0.8"
    Then The user verifies the result is "0.4"

  #failing in staging due to truncation error
  Scenario: Subtracting one positive and one negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "-373.8 - 0.02"
    Then The user verifies the result is "-373.82"

    # failing in prod because it does not allow subtracting a negative
    #failing in staging due to truncation error and issue with number 5
  Scenario: Subtracting 1 positive integer and 1 negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "98676581 - -.0856"
    Then The user verifies the result is "98676581.1"

    # multi number: positive, negative, and decimal calculations

    #failing in staging due to error with 6-0 showing as 0
  Scenario: Subtracting multiple positive integers
    Given The user is on the Calculator app
    When The user performs the following operation "8 - 2 - 2 - 6 - 0 - 2 - 1 - 4"
    Then The user verifies the result is "-9"

    # failing in prod because it does not allow subtracting a negative
    #failing in staging due to issue with the number 5 and issue subtracting a negative
  Scenario: Subtracting multiple negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-88 - -32 - -5 - -16 - -3 - -90 - -1 - -2"
    Then The user verifies the result is "61"

    # failing in prod because it does not allow subtracting a negative
    #failing in staging due to issue subtracting a negative
  Scenario: Subtracting multiple positive and negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-34878 - 9 - -232 - 843 - -211986 - 9 - -1 - 239"
    Then The user verifies the result is "176241"


    #failing in staging due to truncation issue
  Scenario: Subtracting multiple positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "3784.8 - 2.3 - 472.2 - 238.3 - 2.9992 - 2.32 - 233.32 - 4.0"
    Then The user verifies the result is "2829.3608"

    # failing in prod because it does not allow subtracting a negative
    # failing in staging because it does not allow subtracting a negative
  Scenario: Subtracting multiple negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-3784.8 - -2.3 - -472.2 - -238.3 - -2.9992 - -2.32 - -233.32 - -4.0"
    Then The user verifies the result is "-2829.3608"

    # failing in prod because it does not allow subtracting a negative
    # failing in staging because it does not allow subtracting a negative and truncation issue
  Scenario: Subtracting multiple positive and negative decimals and integers
    Given The user is on the Calculator app
    When The user performs the following operation "3784.8 - -2 - 472.2 - 238 - 2.99 - -3289 - 233.32 - -9452.0"
    Then The user verifies the result is "15581.29"


    # 9 digit positive, negative, and decimal calculations

  Scenario: Subtracting 2 nine digit integers
    Given The user is on the Calculator app
    When The user performs the following operation "749274091 - 192634062"
    Then The user verifies the result is "556640029"

    #failing in staging due to truncation error
  Scenario: Subtracting 2 nine digit positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "943.214093 - 0.999999999"
    Then The user verifies the result is "942.214093"

    # failing in prod because it does not allow subtracting a negative
    # failing in staging because it does not allow subtracting a negative
  Scenario: Subtracting 2 nine digit negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-943.214093 - -.999999999"
    Then The user verifies the result is "-942.214093"

    # failing in prod because it does not allow subtracting a negative
    # failing in staging because it does not allow subtracting a negative
  Scenario: Subtracting multiple nine digit numbers
    Given The user is on the Calculator app
    When The user performs the following operation "-943.814093 - 0.999999999 - 2378.22999 - -194000001 - 234323211"
    Then The user verifies the result is "-40326533"

    #rounding

  # failing due to rounding error. -99698869.46 should be rounded to -99898869.5
  #failing in staging due to truncation issue and did not round up
  Scenario: Validating rounded up decimal answer
    Given The user is on the Calculator app
    When The user performs the following operation "-99898869.48 - .02187"
    Then The user verifies the result is "-99898869.5"

  # failing in staging due to truncation issues
  Scenario: Validating large decimal is rounded correctly to 9 digits
    Given The user is on the Calculator app
    When The user performs the following operation "99898.777 - .07144"
    Then The user verifies the result is "99898.7056"

    # multi step problems

  Scenario: Subtracting two positive integers then subtracting a third
    Given The user is on the Calculator app
    When The user performs the following operation "12 - 81"
    Then The user verifies the result is "-69"
    And The user performs the following operation "- 19"
    Then The user verifies the result is "-88"

    # failing in prod because it does not allow subtracting a negative
    # failing in staging because it does not allow subtracting a negative
  Scenario: Subtracting two negative integers then subtracting a third
    Given The user is on the Calculator app
    When The user performs the following operation "-8437512 - -39842981"
    Then The user verifies the result is "31405469"
    And The user performs the following operation "- -46"
    Then The user verifies the result is "31405515"

    #Failing in staging due to truncation issues
  Scenario: Subtracting two positive decimals then subtracting a third
    Given The user is on the Calculator app
    When The user performs the following operation "3874.32 - 34957.223"
    Then The user verifies the result is "-31082.903"
    And The user performs the following operation "- 4.6"
    Then The user verifies the result is "-31087.503"

    # failing in prod because it does not allow subtracting a negative
    # failing in prod because it does not allow subtracting a negative and truncation issues
  Scenario: Subtracting two negative decimals then subtracting a third
    Given The user is on the Calculator app
    When The user performs the following operation "-23.2372 - -783.22"
    Then The user verifies the result is "759.9828"
    And The user performs the following operation "- -5.9"
    Then The user verifies the result is "765.8828"

    # failing in prod on step 2. It does not allow subtracting a negative
    # failing in prod on step 2. It does not allow subtracting a negative and truncation issues
  Scenario: Multi step calculation with positive, negative, and decimal numbers
    Given The user is on the Calculator app
    When The user performs the following operation "-23.2372 - 4783"
    Then The user verifies the result is "-4806.2372"
    And The user performs the following operation "- -378.00"
    Then The user verifies the result is "-4428.2372"
    And The user performs the following operation "- -2467"
    Then The user verifies the result is "-1961.2372"
    And The user performs the following operation "- 697.7"
    Then The user verifies the result is "-2658.9372"
    And The user performs the following operation "- -3600"
    Then The user verifies the result is "941.0628"


    # zero scenarios

  #failing in prod because it returns a negative zero
  #failing in staging because it returns a negative zero
  Scenario: Subtracting 0 from 0
    Given The user is on the Calculator app
    When The user performs the following operation "0 - 0"
    Then The user verifies the result is "0"

  Scenario: Subtracting 0 with a positive integer
    Given The user is on the Calculator app
    When The user performs the following operation "0 - 7392"
    Then The user verifies the result is "-7392"

  Scenario: Subtracting 0 with a negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-7392 - 0"
    Then The user verifies the result is "-7392"

  Scenario: Subtracting 0 with a positive and negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-7392 - 0 - 378"
    Then The user verifies the result is "-7770"

  Scenario: Subtracting 0 with a positive decimal
    Given The user is on the Calculator app
    When The user performs the following operation "0 - 73.92"
    Then The user verifies the result is "-73.92"

    # failing in prod because it does not allow subtracting a negative
    # failing in staging because it does not allow subtracting a negative
  Scenario: Subtracting 0 with a negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "0 - -73.92"
    Then The user verifies the result is "73.92"

    #failing in staging due to truncation issue
  Scenario: Subtracting 0 with a positive and negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-73.92 - 3.78 - 0"
    Then The user verifies the result is "-77.7"

    # failing in prod because tt does not allow subtracting a negative
    # failing in staging because tt does not allow subtracting a negative
  Scenario: Subtracting 0 with positive, negative, and decimal numbers
    Given The user is on the Calculator app
    When The user performs the following operation "0 - -73.92 - 3 - -4 - 2.9"
    Then The user verifies the result is "72.02"

    #failing in prod due to negative zero answer
    #failing in staging due to negative zero answer
  Scenario: Subtracting 0 multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0"
    Then The user verifies the result is "0"

      #failing in prod due to negative zero answer
      #failing in staging due to negative zero answer
  Scenario: multi step zero calculation
    Given The user is on the Calculator app
    When The user performs the following operation "0 - 0"
    Then The user verifies the result is "0"
    And The user performs the following operation "- 0"
    Then The user verifies the result is "0"
    And The user performs the following operation "- 0"
    Then The user verifies the result is "0"















