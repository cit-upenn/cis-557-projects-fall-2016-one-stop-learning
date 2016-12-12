Feature: Give Feedback to the Admin

  As a user
  So that I can view a list of my favorite videos
  I want to add my own video to the list.
  
  
  Scenario: Give feedback comment
    Given I'm on the Feedback page
    When I enter the feedback info
    Then I should be able to see the success message
