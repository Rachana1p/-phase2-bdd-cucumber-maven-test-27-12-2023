#Author: rachana.XXX@gmail.com
#Keywords Summary:
#Features : List of features
Feature: Login
  I want to verify successfull login with valid user Credentials

  @regression @smoke @login
  Scenario: Successfull Verification of Login functionality
    Given: user should be on the  login page

    And user enter email address
    # And user enters password
    And user clicks "login in" button
    Then user should navigate to "My Account"

  Scenario: Valid Credentials for login
    Given: user want to enter valid credentials

    When user check for "email" and "password"fields
    And user enters following details
      | email          | password |
      | abc@gmail.com  | abc@123  |
      | pqr@gmail.com  | pqr@123  |
      | abc@gmail.com  | abc@123  |
      | uvww@gmail.com | uvww@123 |
    And user clicks "login in" button

  Scenario: Unsuccessfull Verification of Login functionality
    Given: user should be on the  login page

    And user enters following details
    And user enter email address
    And user enters password
    And user clicks "login in" button
    Then error message displayed with wrong Credentials
    And user returns back on the login page
