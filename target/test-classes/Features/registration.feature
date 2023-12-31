Feature: Registration

  Background: 
    Given user on the homepage
    And user follow "Register" button

  @regression
  Scenario: Create a New User
    Given user should be on the registation page
    When user fills  registration "email" with "xxxxx@gmail.com"
    And user fills registration "password" with "xxxxx"
    And user fills registration "cnf-password" with "xxxxx"
    And user clicks "Register" button
    Then User is created Successfully
    And user return back on registration page

  Scenario: User does not follow form validation
    Given user should be on the registation page
    When user enters wrong characters
    Then error message displayed with invalid password
    And user return back on registration page
