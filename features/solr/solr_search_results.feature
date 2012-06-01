@known_failure
Feature: Visitor searches site for Views

  In order to see relevant search results and filters
    As a visitor to Drupal.org
  I want to search for the term 'views'
 
  Scenario: Drupal.org has facet blocks on search results page

  When I visit "/search/apachesolr_search/views"
  Then I should see the heading "or filter by…"
    And I should see the heading "or search for…"
