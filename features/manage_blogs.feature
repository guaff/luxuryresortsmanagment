Feature: Manage blogs
  In order to create a new blog post
  lrm
  wants to see the blog
  
  Scenario: Register new blog
    Given a user is logged in as "ivan"
    Given I am on the new blog page
    When I fill in "title" with "title 1"
    And I fill in "Body" with "body 1"
    And I press "Create"
    Then I should see "title 1"
    And I should see "body 1"
