@addition @regression
Feature: Addition

  # 2 number: positive, negative and decimal calculations

    #failing in staging due to issue with the number 5
  Scenario: Adding two positive integers
    Given The user is on the Calculator app
    When The user performs the following operation "5 + 3"
    Then The user verifies the result is "8"

  Scenario: Adding two negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-9 + -4"
    Then The user verifies the result is "-13"

  Scenario: Adding one positive and one negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-8 + 2"
    Then The user verifies the result is "-6"

    #Failed in staging due to truncation error
  Scenario: Adding two positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "0.4 + 0.8"
    Then The user verifies the result is "1.2"

    #Failed in staging due to truncation error
  Scenario: Adding two negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-0.4 + -0.8"
    Then The user verifies the result is "-1.2"

    #Failed in staging due to truncation error
  Scenario: Adding one positive and one negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "-373.8 + 0.02"
    Then The user verifies the result is "-373.78"

   #failing in staging due to issue with the number 5 and truncation error
  Scenario: Adding 1 positive integer and 1 negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "98676581 + -.0856"
    Then The user verifies the result is "98676580.9"

    # multi number: positive, negative, and decimal calculations

    #Failed in staging due to multiple input error/zeroing/erroring out
  Scenario: Adding multiple positive integers
    Given The user is on the Calculator app
    When The user performs the following operation "8 + 2 + 2 + 6 + 0 + 2 + 1 + 4"
    Then The user verifies the result is "25"

  #failing in staging due to issue with the number 5, multiple input, and erroring out
  Scenario: Adding multiple negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-88 + -32 + -5 + -16 + -3 + -90 + -1 + -2"
    Then The user verifies the result is "-237"

   #Failed in staging due to multiple input error/zeroing/erroring out
  Scenario: Adding multiple positive and negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-34878 + 9 + -232 + 843 + -211986 + 9 + -1 + 239"
    Then The user verifies the result is "-245997"

    #Failed in staging due to multiple input error/zeroing/erroring out and truncation error
  Scenario: Adding multiple positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "3784.8 + 2.3 + 472.2 + 238.3 + 2.9992 + 2.32 + 233.32 + 4.0"
    Then The user verifies the result is "4740.2392"

    #Failed in staging due to multiple input error/zeroing/erroring out and truncation error
  Scenario: Adding multiple negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-3784.8 + -2.3 + -472.2 + -238.3 + -2.9992 + -2.32 + -233.32 + -4.0"
    Then The user verifies the result is "-4740.2392"

    #Failed in staging due to multiple input error/zeroing/erroring out and truncation error
  Scenario: Adding multiple positive and negative decimals and integers
    Given The user is on the Calculator app
    When The user performs the following operation "3784.8 + -2 + 472.2 + 238 + 2.99 + -3289 + 233.32 + -9452.0"
    Then The user verifies the result is "-8011.69"


    # 9 digit positive, negative, and decimal calculations
  Scenario: Adding 2 nine digit integers
    Given The user is on the Calculator app
    When The user performs the following operation "749274091 + 192634062"
    Then The user verifies the result is "941908153"

    #Failed in staging due truncation error
  Scenario: Adding 2 nine digit positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "943.214093 + 0.999999999"
    Then The user verifies the result is "944.214093"

    #Failed in staging due to truncation error
  Scenario: Adding 2 nine digit negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-943.214093 + -.999999999"
    Then The user verifies the result is "-944.214093"

    #failed in prod because it only displaying 8 numbers instead of 9. It is leaving off number after decimal point
    #Failed in staging due to multiple input error/zeroing/erroring out
  Scenario: Adding multiple nine digit numbers
    Given The user is on the Calculator app
    When The user performs the following operation "-943.814093 + 0.999999999 + 2378.22999 + -194000001 + 234323211"
    Then The user verifies the result is "40324645.4"


    # exponents

   #failed in prod due to rounding error
   #failed in staging due to rounding/truncation error
  Scenario: Adding 2 nine digit positive integers to get an exponential answer
    Given The user is on the Calculator app
    When The user performs the following operation "999999999 + 999999999"
    Then The user verifies the result is "1.1e10"

    #Suprisingly this was calcuated correctly in prod and staging with no rounding/truncation error
  Scenario: Adding 2 nine digit negative integers for exponent answer
    Given The user is on the Calculator app
    When The user performs the following operation "-943214093 + -999999999"
    Then The user verifies the result is "-1.94321409e+9"

    #rounding

   #failed in prod due to rounding error
   #failed in staging due to truncation error
  Scenario: Validating rounded up decimal answer
    Given The user is on the Calculator app
    When The user performs the following operation "-99898869.48 + .02187"
    Then The user verifies the result is "-99898869.5"

  #failed in staging due to truncation error
  Scenario: Validating large decimal is rounded correctly to 9 digits
    Given The user is on the Calculator app
    When The user performs the following operation "99898.948 + .02187"
    Then The user verifies the result is "99898.9699"

    # multi step problems
  Scenario: Adding two positive integers then adding a third
    Given The user is on the Calculator app
    When The user performs the following operation "12 + 81"
    Then The user verifies the result is "93"
    And The user performs the following operation "+ 19"
    Then The user verifies the result is "112"

  #failing in staging due to issue with the number 5
  Scenario: Adding two negative integers then adding a third
    Given The user is on the Calculator app
    When The user performs the following operation "-8437512 + -39842981"
    Then The user verifies the result is "-48280493"
    And The user performs the following operation "+ -46"
    Then The user verifies the result is "-48280539"

    #failed in staging due to truncation error
  Scenario: Adding two positive decimals then adding a third
    Given The user is on the Calculator app
    When The user performs the following operation "3874.32 + 34957.223"
    Then The user verifies the result is "38831.543"
    And The user performs the following operation "+ 4.6"
    Then The user verifies the result is "38836.143"

  #failing in staging due to issue with the number 5 and truncation error
  Scenario: Adding two negative integers then adding a third
    Given The user is on the Calculator app
    When The user performs the following operation "-23.2372 + -783.22"
    Then The user verifies the result is "-806.4572"
    And The user performs the following operation "+ -5.9"
    Then The user verifies the result is "-812.3572"

   #failing in staging due truncation error
  Scenario: Multi step calculation with positive, negative, and decimal numbers
    Given The user is on the Calculator app
    When The user performs the following operation "-23.2372 + 4783"
    Then The user verifies the result is "4759.7628"
    And The user performs the following operation "+ -378.00"
    Then The user verifies the result is "4381.7628"
    And The user performs the following operation "+ -2467"
    Then The user verifies the result is "1914.7628"
    And The user performs the following operation "+ 697.7"
    Then The user verifies the result is "2612.4628"
    And The user performs the following operation "+ -3600"
    Then The user verifies the result is "-987.5372"


    # zero scenarios
  Scenario: adding 0 to 0
    Given The user is on the Calculator app
    When The user performs the following operation "0 + 0"
    Then The user verifies the result is "0"

  Scenario: adding 0 to a positive integer
    Given The user is on the Calculator app
    When The user performs the following operation "0 + 7392"
    Then The user verifies the result is "7392"

  Scenario: adding 0 to a negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-7392 + 0"
    Then The user verifies the result is "-7392"

  Scenario: adding 0 to a positive and negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-7392 + 0 + 378"
    Then The user verifies the result is "-7014"

    #failing in staging due to truncation error
  Scenario: adding 0 to a positive decimal
    Given The user is on the Calculator app
    When The user performs the following operation "0 + 73.92"
    Then The user verifies the result is "73.92"

    #failed in prod it does not accept 0 plus a negative number
    # also in prod, with integers, 0 + 6 gets calculated before pressing the equals button
    #failed in staging due to erroring out
  Scenario: adding 0 to a negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "0 + -73.92"
    Then The user verifies the result is "-73.92"

  #failing in staging due to truncation error
  Scenario: adding 0 to a positive and negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-73.92 + 3.78 + 0"
    Then The user verifies the result is "-70.14"

   #failed in prod it does not accept 0 plus a negative number
   #failed in staging to to zeroing out
  Scenario: adding 0 to numbers
    Given The user is on the Calculator app
    When The user performs the following operation "0 + -73.92 + 3 + -4 + 2.9"
    Then The user verifies the result is "-72.02"

  Scenario: adding 0 multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "0 + 0 + 0 + 0 + 0 + 0 + 0 + 0 + 0 + 0"
    Then The user verifies the result is "0"

  Scenario: multi step zero calculation
    Given The user is on the Calculator app
    When The user performs the following operation "0 + 0"
    Then The user verifies the result is "0"
    And The user performs the following operation "+ 0"
    Then The user verifies the result is "0"
    And The user performs the following operation "+ 0"
    Then The user verifies the result is "0"











    



