Feature: Ability to express interest in a room
  In order to express interest in a room
  As a user
  I want to send a email hen they express interest
  
  Background:
    Given I am on the full view of a resort
    Then I should see "more info"
    When I follow "more info"
    Then I should see "Ivan Acosta-Rubio"
    When I should see "Back"
    
  Scenario: Expressing interest in a room
    When I fill in "interested_name" with "Bellatrix"
    And I fill in "interested_email" with "bellatrix@bakedweb.net"
    And I fill in "interested_phone_number" with "305555555"
    When I press "express interest"
    Then I should see "Thank you for expressing interest in this property. We've been notified about it"
    Then I should receive an emails
    When I open the email
    Then I should see "33137"
    
  Scenario: Not allowing blank submissions when expressing interest in a unit
    When I press "express interest"
    Then I should see "Are you interest in this unit?"
        
  
  
  
