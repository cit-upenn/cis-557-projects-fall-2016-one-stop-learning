Feature: View Favorite and Unfavorite Links

  As a user
  So that I can view my favorite videos
  I want to select the favorite/unfavorite button
  
  
  Scenario: Login Page should not have Favorite Links
    Given I'm on the SignIn page
    When I See the Page
    Then I should not be able to see the Favorite links

  Scenario: Home Page should have Favorite links
  	Given I'm on the Home page
    When I See the Page
    Then I should be able to see the Favorite links

  Scenario: Language Page should have Favorite links
    Given I'm on the Language page
    When I See the Page
    Then I should be able to see the Favorite links

  Scenario: Count Favorite Links
    Given I'm on the Language page
    When I click on the Favorite button
    Then the link count should increment

    When I click on the Unfavorite button
    Then the link count should decrement
      
  Scenario: Add and Remove Favorite Links
    Given I'm on the Language page
    When I click on the Favorite button
    Then the link should be shown in the Favorite Links

    When I click on the Unfavorite button
    Then the link should be removed from the Favorite Links
    