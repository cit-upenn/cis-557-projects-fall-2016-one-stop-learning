Feature: Add Favorite URL to video list

  As a user
  So that I can view a list of my favorite videos
  I want to add my own video to the list.
  
  
  Scenario: Add Blank URL
    Given I'm on the Favorites page
    When I click on the Add button
    Then I should be able to see the error notice.

  Scenario: Add personal Favorite Videos Links
  	Given I'm on the Favorites page
    When I the enter the URL information
    Then I should be able to see that video in the list.
