Feature: People have to register on contact and concierge
  In order to register on those pages
  davar
  wants people to see the thank you page after they submit the form
  
  Scenario: Register new people on contact
    Given I am on the contact page
		When I fill in "name" with "Ivan Acosta-Rubio"
		And I fill in "email" with "ivan@bakedweb.net"
		And I fill in "phone" with "3055984873"
		And I press "contact me"
		Then I should see "Thank you for contacting us, We'll be in touch"
		
	Scenario: Register new People on Concierge
		Given I am on the concierge page
		When I fill in "name" with "Ivan Acosta-Rubio"
		And I fill in "email" with "ivan@bakedweb.net"
		And I fill in "phone" with "30499573830"
		And I press "let me know when it launches"
		Then I should see "Thank you for contacting us, We'll be in touch"
