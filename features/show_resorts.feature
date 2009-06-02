Feature: show resorts correctly
  In order to see the resorts in the frontend
  As a user
  I want to be able to see the same amount of resorts as in the back-end


  Scenario Outline: Viewing Resorts
    Given I am showing florida with <count> resorts
    Then I should see <count> resorts
    Examples:
     | count |
     | 1     |
     | 2     |
     | 3     |
     | 4     |
     | 5     |
     | 6     |
     | 7     |
     | 8     |
     | 9     |
     | 10    |



				