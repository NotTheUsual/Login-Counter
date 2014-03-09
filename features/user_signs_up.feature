Feature: User signs up
  In order to make use of the service
  As a User
  I want to be able to sign up

  Scenario: from a sign up page
    Given I am on the sign up page
    When I fill out the sign up form
    Then I should be signed up

  @javascript
  Scenario: from the homepage
    Given I am on the homepage
    When I fill out the sign up form
    Then I should still be on the homepage
    And I should have been signed up