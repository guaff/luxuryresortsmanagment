Feature: Add a room from full client view
  In order to add a room inside of the full view of the client
  As a admin
  I want to be able to click add new room inside client full view and be able to fill our the details for adding a room

  Scenario: title
    Given a user is logged in as "admin"
		Given I am on the show client page
		And I click "Add Room"
		#And I fill 
  