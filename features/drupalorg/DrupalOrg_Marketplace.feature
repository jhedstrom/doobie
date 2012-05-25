Feature: Find Drupal services
  In order to find the right Drupal service provider for me
  As any user
  I want to filter available providers by categories

  Scenario: Browse to the Marketplace preview page
    Given I am at "/"
    When I click "Marketplace"
    Then I should see the link "Marketplace preview"

  Scenario Outline: See a paged list of service providers
    Given I am at "/drupal-services"
    When I click "Marketplace preview"
    Then I should see the link "next ›"
    And I should see the heading <category>

    Examples: 
    | category           |
    | "Services"         |
    | "Sectors"          |
    | "Countries served" |

  Scenario: See a filtered list of service providers
    Given I am at "marketplace-preview" 
    When I click "Consulting"
      And I click "Government"
    Then I should see the link "Achieve Internet"
      And I should not see the link "2020Media"
   
