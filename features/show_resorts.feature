Feature: show resorts correctly
  In order to see the resorts in the frontend
  As a user
  I want to be able to see the same amount of resorts as in the back-end


	Scenario: having one resort
	  Given I am showing florida with one resort
	  Then I should see "resort1"
	
	Scenario: having two resorts
		Given I am showing florida with two resorts
		Then I should see "resort1" 
		Then I should see "resort2"
		
	Scenario: having three resorts
		Given I am showing florida with three resorts
		Then I should see "resort1" 
		Then I should see "resort2"
		Then I should see "resort3"
	
	Scenario: having four resorts
		Given I am showing florida with four resorts
		Then I should see "resort1" 
		Then I should see "resort2"
		Then I should see "resort3"
		Then I should see "resort4"

	Scenario: having five resorts
		Given I am showing florida with five resorts
		Then I should see "resort1" 
		Then I should see "resort2"
		Then I should see "resort3"
		Then I should see "resort4"
		Then I should see "resort5"

	Scenario: having six resorts
		Given I am showing florida with six resorts
		Then I should see "resort1" 
		Then I should see "resort2"
		Then I should see "resort3"
		Then I should see "resort4"
		Then I should see "resort5"
		Then I should see "resort6"
	
	Scenario: having seven resorts
		Given I am showing florida with seven resorts
		Then I should see "resort1" 
		Then I should see "resort2"
		Then I should see "resort3"
		Then I should see "resort4"
		Then I should see "resort5"
		Then I should see "resort6"
		Then I should see "resort7"
		
		
	Scenario: having eight resorts
		Given I am showing florida with eight resorts
		Then I should see "resort1" 
		Then I should see "resort2"
		Then I should see "resort3"
		Then I should see "resort4"
		Then I should see "resort5"
		Then I should see "resort6"
		Then I should see "resort7"
		Then I should see "resort8"
	
	Scenario: having nine resorts
		Given I am showing florida with nine resorts
		Then I should see "resort1" 
		Then I should see "resort2"
		Then I should see "resort3"
		Then I should see "resort4"
		Then I should see "resort5"
		Then I should see "resort6"
		Then I should see "resort7"
		Then I should see "resort8"
		Then I should see "resort9"
	
	Scenario: having ten resorts
		Given I am showing florida with ten resorts
		Then I should see "resort1" 
		Then I should see "resort2"
		Then I should see "resort3"
		Then I should see "resort4"
		Then I should see "resort5"
		Then I should see "resort6"
		Then I should see "resort7"
		Then I should see "resort8"
		Then I should see "resort9"
		Then I should see "resort10"
					
					