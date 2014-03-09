Feature: User signs in
  In order to use the service
  As a registered user
  I want to be able to sign in

  Background:
    Given I am a registered user

  Scenario: from the homepage
    Given I am on the homepage
    When I fill out the sign in form
    Then I should be on the count page
    And I should see a welcome message