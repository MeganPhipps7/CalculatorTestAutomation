@Division
Feature: Calculator

  #positive, negative and decimal calculations

  Scenario: Dividing two positive integers
    Given The user is on the Calculator app
    When The user performs the following operation "9 / 3"
    Then The user verifies the result is "3"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
    #Fails in staging due to decimal truncation error
  Scenario: Dividing two negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-9 / -4"
    Then The user verifies the result is "2.25"

    #Fails in staging because it does not calculate negative input correctly
  Scenario: Dividing one positive and one negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-8 / 2"
    Then The user verifies the result is "-4"

  #Fails in staging due to decimal truncation error
  Scenario: Dividing two positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "0.4 / 0.8"
    Then The user verifies the result is "0.5"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
    #Fails in staging because it subtracts the -0.4 then truncates the decimal
  Scenario: Dividing two negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-0.8 / -0.4"
    Then The user verifies the result is "-2"

   #Fails in staging because it does not calculate negative input correctly
  Scenario: Dividing one positive and one negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "-373.8 / 0.02"
    Then The user verifies the result is "-18690"

  #Fails in prod due to calc not accepting a negative after selecting a different operation
  ##Fails in staging because it subtracts the -0.4 then truncates the decimal
  Scenario: Dividing 1 positive integer and 1 negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "4 / -.25"
    Then The user verifies the result is "-16"

    # multi number: positive, negative, and decimal calculations

  Scenario: Dividing multiple positive integers
    Given The user is on the Calculator app
    When The user performs the following operation "960 / 12 / 10"
    Then The user verifies the result is "8"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
    #Fails in staging because it cannot correctly calculate many inputs without becoming 0 or erroring out
    #Also fails in staging because it subtracts negative numbers
  Scenario: Dividing multiple negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-960 / -2 / -2 / -2 / -2 / -2 / -2 / -2"
    Then The user verifies the result is "7.5"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
    #Fails in staging because it cannot correctly calculate many inputs without becoming 0 or erroring out
    #Also fails in staging because it subtracts negative numbers
  Scenario: Dividing multiple positive and negative integers
    Given The user is on the Calculator app
    When The user performs the following operation "-34878 / 9 / -3 / 3 / -6 / 9 / -1 "
    Then The user verifies the result is "7.9739369"


   #failed in prod do to rounding error - should have stayed at 1 but rounded to 2
   #Fails in staging because it cannot correctly calculate many inputs without becoming 0 or erroring out
  Scenario: Dividing multiple positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "3784.8 / 1.0 / 4.2 / 2.3 / 2.9 / 2.32 / 3.3 / 4.0"
    Then The user verifies the result is "4.41169921"

   #Fails in prod due to calc not accepting a negative after selecting a different operation
   #Fails in staging because it cannot correctly calculate many inputs without becoming 0 or erroring out
   #Also fails in staging because it subtracts negative numbers
  Scenario: Dividing multiple negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-3784.8 / -1.0 / -4.2 / -2.3 / -2.9 / -2.32 / -3.3 / -4.0"
    Then The user verifies the result is "-4.41169921"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
    #Fails in staging because it cannot correctly calculate many inputs without becoming 0 or erroring out
    #Also fails in staging because it subtracts negative numbers
  Scenario: Dividing multiple positive and negative decimals and integers
    Given The user is on the Calculator app
    When The user performs the following operation "3784.8 / -2 / 2.2 / 8 / 2.9 / -3 / 2.32"
    Then The user verifies the result is "5.32712680"


    # 9 digit positive, negative, and decimal calculations

  #failed in staging because it rounds up answer and truncates the decimal
  Scenario: Dividing 2 nine digit integers
    Given The user is on the Calculator app
    When The user performs the following operation "749274091 / 192634062"
    Then The user verifies the result is "3.88962411"

  #failed in prod due to rounding error
  Scenario: Dividing 2 nine digit positive decimals
    Given The user is on the Calculator app
    When The user performs the following operation "9.43456462 / 0.999999999"
    Then The user verifies the result is "9.43456463"

  #Fails in prod due to calc not accepting a negative after selecting a different operation
  #failed in staging due to truncation error
  Scenario: Dividing 2 nine digit negative decimals
    Given The user is on the Calculator app
    When The user performs the following operation "-943.2 / -.999999999"
    Then The user verifies the result is "-943.200001"

  #Fails in prod due to calc not accepting a negative after selecting a different operation
  #Fails in staging because it rounds to 0
  Scenario: Dividing multiple nine digit numbers
    Given The user is on the Calculator app
    When The user performs the following operation "-943.814093 / 0.999999999 / 2378.22999 / -194000001 / 234323211"
    Then The user verifies the result is "8.73002656e-18"

  Scenario: Dividing the same integers by itself
    Given The user is on the Calculator app
    When The user performs the following operation "999999999 / 999999999"
    Then The user verifies the result is "1"

#    # multi step problems

  Scenario: Dividing two positive integers then dividing by a third
    Given The user is on the Calculator app
    When The user performs the following operation "144 / 12"
    Then The user verifies the result is "12"
    And The user performs the following operation "/ 6"
    Then The user verifies the result is "2"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
    #fails in staging because it subtracts negative numbers
  Scenario: Dividing two negative integers then dividing by a third
    Given The user is on the Calculator app
    When The user performs the following operation "-144 / -12"
    Then The user verifies the result is "-12"
    And The user performs the following operation "/ -6"
    Then The user verifies the result is "-2"



    #failed in prod due to rounding error
    #fails in staging because of truncation error
  Scenario: Dividing two positive decimals then dividing by a third
    Given The user is on the Calculator app
    When The user performs the following operation "3000000.32 / 300.223"
    Then The user verifies the result is "9992.57325"
    And The user performs the following operation "/ 30.21"
    Then The user verifies the result is "330.770383"


   #Fails in prod due to calc not accepting a negative after selecting a different operation
   #fails in staging because it subtracts negative numbers
  Scenario: Dividing two negative integers then dividing by a third
    Given The user is on the Calculator app
    When The user performs the following operation "-783.22 / -23.2372"
    Then The user verifies the result is "33.7054378"
    And The user performs the following operation "/ -5.9"
    Then The user verifies the result is "-5.71278607"

   #Fails in prod due to calc not accepting a negative after selecting a different operation
   #fails in staging because it subtracts negative numbers
  Scenario: Multi step calculation with positive, negative, and decimal numbers
    Given The user is on the Calculator app
    When The user performs the following operation "-77783.22 / 4"
    Then The user verifies the result is "19445.805"
    And The user performs the following operation "/ -378.00"
    Then The user verifies the result is "-51.4439286"
    And The user performs the following operation "/ -2"
    Then The user verifies the result is "25.7219643"
    And The user performs the following operation "/ 5.5"
    Then The user verifies the result is "-4.67672078"
    And The user performs the following operation "/ -4.67672078"
    Then The user verifies the result is "1"


    # zero scenarios

  #Failed in prod because was 0 but should have been Error
  Scenario: Dividing 0 with 0
    Given The user is on the Calculator app
    When The user performs the following operation "0 / 0"
    Then The user verifies the result is "Error"


  Scenario: Dividing 0 with a positive integer
    Given The user is on the Calculator app
    When The user performs the following operation "0 / 7392"
    Then The user verifies the result is "0"

  #Failed in prod because was 0 but should have been Error
  Scenario: Dividing 0 with a negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-7392 / 0"
    Then The user verifies the result is "Error"

  Scenario: Dividing 0 with a positive and negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-7392 / 0 / 378"
    Then The user verifies the result is "Error"

  Scenario: Dividing 0 with a positive decimal
    Given The user is on the Calculator app
    When The user performs the following operation "0 / 73.92"
    Then The user verifies the result is "0"

    #Fails in prod due to calc not accepting a negative after selecting a different operation
    #Fails in staging because it subtracts the negative value
  Scenario: Dividing 0 with a negative decimal
    Given The user is on the Calculator app
    When The user performs the following operation "0 / -73.92"
    Then The user verifies the result is "0"

  Scenario: Dividing 0 with a positive and negative integer
    Given The user is on the Calculator app
    When The user performs the following operation "-73.92 / 3.78 / 0"
    Then The user verifies the result is "Error"

   #Fails in prod due to calc not accepting a negative after selecting a different operation
  Scenario: Dividing 0 with numbers
    Given The user is on the Calculator app
    When The user performs the following operation "0 / -73.92 / 3 / -4 / 2.9"
    Then The user verifies the result is "0"

    #Fails in staging because it returns 0 instead of Error
  Scenario: Dividing 0 multiple times
    Given The user is on the Calculator app
    When The user performs the following operation "0 / 0 / 0 / 0 / 0"
    Then The user verifies the result is "Error"

  # fails in prod for second step - should be Error but is 0
  # Fails in staging because the second input calculates 0 instead of Error
  Scenario: multi step zero calculation
    Given The user is on the Calculator app
    When The user performs the following operation "0 / 0"
    Then The user verifies the result is "Error"
    And The user performs the following operation "/ 0"
    Then The user verifies the result is "Error"
    And The user performs the following operation "/ 0"
    Then The user verifies the result is "Error"
