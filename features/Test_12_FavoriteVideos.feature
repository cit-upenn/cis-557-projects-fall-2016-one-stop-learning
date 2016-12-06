Feature: View Favorite Videos Page

  As a user
  So that I can view a list of my favorite videos
  I want to see the favorites page
  
  
  Scenario: Favorite Videos Page
    Given I'm on the Home page
    When I click on the Favorites Link/Button
    Then I should be able to see the Favorite Videos Page

  Scenario: Favorite Videos Links
  	Given I click a favorite button for a video
    When I go the Favorite Videos Page
    Then I should be able to see that video
