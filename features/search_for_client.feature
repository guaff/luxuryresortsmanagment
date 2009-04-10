Feature: Searching function in admin
  In order to search for an specific record in the admin area
  As a an admin
  I want be able to display only matching results from the query

	Scenario: Searching for a client
	  Given a user is logged in as "admin"
	  Given I am on the admin client page
	  When I fill in "search_" with "ivan"
		And I press "search"
		Then I should see "ivan"
		
	Scenario: Searching for a room
  	Given a user is logged in as "admin"
		Given I am on the admin room page
	  Then I should see "search"
		
	
  
