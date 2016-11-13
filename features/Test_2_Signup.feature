Feature: User registration

  As a user
  So that I can access the app
  I want to signup using email
  
  
  Scenario: Register using email
    Given I'm on the Signup page
    When I give a valid email id and password
    Then I should be able to signup

 