Feature: Login Count
  In order to see how many times I have logged in
  As a User
  I want to be shown the count when I log in

  Background:
    Given I am a registered user

  Scenario: Upon logging in for the first time
    Given I am on the homepage
    When I sign in for the first time
    Then I should see a count of 1

  Scenario: Loggin in twice
    Given I have signed in
    And I have signed out
    And I have signed in again
    Then I should see a count of 2