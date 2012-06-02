@known_git6failure

Feature: Download & Extend Modules page
  In order to find modules related to a module I'm using
  As any Drupal.org user
  I want to browse a list of related modules

  Scenario: Search for existing module
    Given I am at "/project/modules"
    When I search for "masquerade"
    Then I should see the text "Masquerade"

