Feature: Print Contracts
	In order to print the contract
	An Admin
	wants to see it on screen with a default template
	
	Scenario: Show Contract
	Given a user is logged in as "ivan"
	Given I am on the show client page
	And I click "Print"
	Then I should see "ivan"
	