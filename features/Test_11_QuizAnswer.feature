
Feature: Quiz Answers
	As a user
	I want to check my quiz answer 
	So that I can know if it is correct or wrong

	Scenario: Open quiz page.

		Given I'm on the language page
		When I click on the quiz button
		Then I should be able to see the quiz page.

	Scenario: Enter the answer number
		Given I'm on the Quiz Page
		When I click on the check
		Then I should be able to see if the answer is correct or wrong