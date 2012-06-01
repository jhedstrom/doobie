Feature: Log into Drupal.org
  In order for people to become contributing community members
  Anyone who visits Drupal.org 
  Should be able to log into Drupal.org

  Scenario: User with active account
    Given I am at "/user"
      And I enter "doobie" for "Username:"
      And I enter "boo" for "Password:" 
    When I press "Log in" 
    Then I should see the link "Log out"


