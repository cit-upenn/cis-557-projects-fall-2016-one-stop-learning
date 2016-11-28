Feature: New Comments section

  As a user
  So that I can add comments
  I want to create a new comment
  
   Scenario: Add new comment
    Given I'm on the New Comments Page
    When I add a new comment
    Then The new comment should be added
 

  Scenario: Auto-populate Author
    Given I'm on the New Comments Page
    When I try to add a new comment
    Then The Author field should be auto-populated with my email id

  