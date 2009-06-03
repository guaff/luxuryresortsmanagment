Feature: Managing clients in the backend
  In order to add a client
  As a admin
  I want to go to the backend and be able to manage clients
  

  Scenario: Adding a client that has the same address and billing addres
    Given a user is logged in as "admin"
    When I go to the admin_page
    When I follow "clients"
    And I follow "new client"
    And I fill out all client info, but billing address
    And I check "same as address"
    When I press "Create"
    Then I should see "Client was successfully created."

  Scenario: Adding a room in the same screen
    Given a user is logged in as "admin"
    When I go to the admin_page
    And I follow "clients"
    And I follow "new client"
    And I fill out all client info, but billing address
    When I press "create"
    Then I should see "Client was successfully created."
    And I should see "SHOWING INFORMATION FOR CLIENT"
    When I follow "Add Room"
    #pending
    #Then I should see "Owner name"
    #And I fill out the room information
    
  
  
  
  
