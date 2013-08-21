Feature: Merge Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I have an article with Title Test
    And I have an article with Title Hello World!

  Scenario: merge articles with right content
    Given I am on the all articles page
    When I follow "Test"
    And I fill in "merge_with" with "5"
    Then I should see name="merge_with"
    When I press "Merge"
    Then I should see "Test..."
    And I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging!"
    When I click on publish
    Then I should see "admin"
    When I click on "Show" for "Test"
    Then I should see "Comment1" and "Comment2"
    And Title should be "Test"
