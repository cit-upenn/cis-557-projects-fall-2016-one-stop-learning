Feature: Display Language

  As a user
  So that I can view the languages
  I want to select a language
  
  
  Scenario: Select language
  	Given all the languages have been added
    And I'm on the display page
    When I click on the drop-down
    Then I should be able to see all the languages and select one
    
 


