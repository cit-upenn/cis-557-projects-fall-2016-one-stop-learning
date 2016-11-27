Feature: Reply to Comments section

  As a user
  So that I can reply to previous comments
  I want to add a new reply
  
   Scenario: Reply to comment
    Given I'm on the Comments Page
    When I reply to a new comment
    Then The new reply should be added to that comment
 



  