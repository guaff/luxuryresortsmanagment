Feature: comments in client records
 In order to be able to comment in a client's record
 As an Admin
 I want to be able to create several comments on the client record
 
 Scenario: Adding a comment to a client
   Given a user is logged in as "admin"
   Given I am on the client show page
   When I fill in "comment_comment" with "This is my comment"
   And I press "create"
   Then I should see "This is my comment"
   
   
   