Feature: Favorite and Unfavorite Buttons

  As a user
  So that I can mark/unmark my favorite videos
  I want to select the favorite/unfavorite button
  
  
  Scenario: Home Page Favorite/Unfavorite button
    Given I'm on the Home page
    When I See the Page
    Then I should not be able to see the Favorite or Unfavorite button

  Scenario: View Language Page Favorite/Unfavorite button
  	Given I'm on the Home page
    When I go the page of any Language
    Then I should be able to see the Favorite or Unfavorite button

  Scenario: Click Language Page Favorite/Unfavorite button
    Given I'm on the language page
    When I click on the Favorite button
    Then the link should be stored in the Favorite Table

    When I click on the Unfavorite button
    Then the link should be removed from the Favorite Table
    