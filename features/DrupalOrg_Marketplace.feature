Feature: Find Drupal services
  In order to find the right Drupal service provider for me
  As any user
  I want to filter available providers by categories

  Scenario: Browse to the Marketplace preview page
    Given I am at "/"
    When I click "Marketplace"
    Then I should see a link called "Marketplace preview"
