Feature: User signout

	As a user
	I want to sign out
	  
	Scenario: Signout
		Given I'm logged in 
		And I'm on the Main Page
		When I click on signout
		Then I should signout