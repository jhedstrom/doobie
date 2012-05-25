Feature: Visitor searches site for Views

  As a visitor to Drupal.org
  I want to search for the term 'views'
  So that I can see relevant search results and filters

  Scenario: Drupal.org has facet blocks on search results page

  Given I am viewing search results page for term views
  When I look at the sidebar
  Then I should see a filter by block
  And a search for block
