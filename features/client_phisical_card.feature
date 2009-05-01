Feature: Customers are sent a physical card and invited to come back and register
  In order for the customer to register hilsef in the site
  As a visitor
  I want to go to a url and register
  
  Scenario: a user opts in 
    Given I am on the optin page
    And I fill in "client_full_name" with "Ivan"         
    And I fill in "client_full_name_second" with "bellatrix"
    And I fill in "client_address" with "900 Biscayne Blvd 2012"
    And I fill in "client_city" with "Miami"
    And I fill in "client_state" with "FL"
    And I fill in "client_zip" with "33132"
    And I fill in "client_home_phone" with "3055555555"
    And I fill in "client_work_phone" with "9542332333"
    And I fill in "client_email" with "ivan@bakedweb.net"
    And I press "Create"
    Then I should see "Thank you for registering. We will contact you shortly"
    Then "optin@luxuryresortmanagement.com" should receive 1 email
    Then "ivan@bakedweb.net" should receive 1 emails
    
  Scenario: a user opts out
    Given I am on the optout page
    Then I should see "We are"
    And I fill in "client_full_name" with "Ivan"         
    And I fill in "client_full_name_second" with "bellatrix"
    And I fill in "client_address" with "900 Biscayne Blvd 2012"
    And I fill in "client_city" with "Miami"
    And I fill in "client_state" with "FL"
    And I fill in "client_zip" with "33132"
    And I fill in "client_home_phone" with "3055555555"
    And I fill in "client_work_phone" with "9542332333"
    And I fill in "client_email" with "ivan@bakedweb.net"
    And I press "Opt out"
    Then I should see "You opted out successfully"
    And "optout@luxuryresrotmanagement.com" should receive 1 emails
    
    
    
  

  
