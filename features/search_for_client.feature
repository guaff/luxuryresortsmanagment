Feature: Searching for a client
  In order to search for a client in the clients admin area
  As a an admin
  I want be able to display only matching results from the query

	Scenario: Searching for a client
	  Given a user is logged in as "admin"
	  Given I am on the admin client page
	  When I fill in "search_" with "ivan"
		And I press "search"
		Then I should see "ivan"
		
	

  
