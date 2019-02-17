Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
Background:
    Given I visit the site
    And I click on "My Blog"

  Scenario: Successfully create an article [Happy Path]
    When I click on "New article"    
    # And I fill in "name" with "perhegg"
    # And I fill in "password" with "pereriksson"

    And I fill in "Title" with "Learning Rails 5"
    And I fill in "Text" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I can see "Learning Rails 5"
    And I can see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I fill in "Content" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should see "Title can't be blank"
