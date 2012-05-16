@git
Feature: Visitor clones sandbox repository

  As a visitor to Drupal.org
  I want to clone a sandbox repo
  So that I can see if it works for me

  Scenario: Sandbox has a repo with code

    Given I am viewing a sandbox repository that contains code
    And I see the Git command to perform an anonymous http clone
    When I execute the anonymous http clone
    Then I should have a copy of the cloned anonymous repository
@now
  Scenario: Sandbox has a repo with no code    
    Given I am at "/project/git_dev"
    When I click "Version control"
    Then I should see the text "Empty Repository"     
    And I should see the text "asdfal;jfsd"
    
