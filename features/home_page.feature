Feature: see marketing page home, concierge, contact, locations, blog
	In order to browse the whole marketing page
	want to see the page when we browse them 
	
	Scenario: See home
	Given I am on the "home" page
	Then I should see "Welcome"
	
	Scenario: See About us
	Given I am on the "about us" pageI
	Then I should see "About Us"
	
	Scenario: See Concierge
	Given I am on the "concierge" page
	Then I should see "Concierge"
	
	Scenario: See the Blog 
	Given I am on the "blog" page
	Then I should see "Welcome to our Blog"
	
	Scenario: See the Contact 
	Given I am on the "contact" page
	Then I should see "Let's talk"
	