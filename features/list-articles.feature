Feature: See list of articles
  As a visitor,
  When I visit the page
  I would like to see a list of all articles

  Background:
    Given I visit the site
    And the following articles exists
      | title                | text                           |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
    

  Scenario: View list of articles on the page
    
    Then I should see "My Blog"
    And I click on "My Blog"
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"