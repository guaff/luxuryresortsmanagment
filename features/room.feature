Feature: Ability to express interest in a room
  In order to express interest in a room
  As a user
  I want to send a email hen they express interest
  
  Scenario: Expressing interest in a room
    Given I am on the full view of a resort
    Then I should see "more info"
    When I follow "more info"
    Then I should see "Ivan Acosta-Rubio"
    Then I should see "Back"
    When I follow "express interest"
    Then I should see "Thank you for expressing interest in this property. We've been notified about it"
