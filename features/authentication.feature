Feature: User signs up
  In order to make use of the service
  As a User
  I want to be able to sign up

  Scenario: from a sign up page
    Given I am on the sign up page
    When I fill out the sign up form
    Then I should be signed up 