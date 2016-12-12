Feature: User Sign In

  As a user
  So that I can access the app
  I want to sign in using email
  
  
  Scenario: Sign In using email
    Given I'm on the SignIn page
    When I give valid credentials
    Then I should be able to signIn

 