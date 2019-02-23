Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
Background:
    Given I visit the site
    And I click "My Blog"
    And I click "New article"   


  Scenario: Successfully create an article [Happy Path]
    When I fill in "article[title]" with "Learning Rails 5"
    And I fill in "article[text]" with "Excited about learning a new framework"
    And I click "Create Article"
    Then I can see "Learning Rails 5"
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I fill in "article[text]" with "Excited about learning a new framework"
    And I click "Create Article"
    Then I should see "Title can't be blank"
    
