Feature: Sending Outbound Emails
  In order to send emails to clients
  As an admin
  I want to be able to send the welcome package to clients
  
  Scenario: Sending Welcome package without a room
    Given a user is logged in as "admin"
    Given I am on the client show page
    When I follow "Email Welcome Package"
    Then this step is pending
    #Then I should see "You must have a room associated with this client"
  
  Scenario: Sending Welcome package with a room
    Given a user is logged in as "admin"
    Given I am on the client show page
    And the user has a room associated with him
    When I follow "Email Welcome Package"
    Then I should see "Welcome Package was email suscesfully"