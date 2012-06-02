Feature: Visitor clones repositories

  In order to try out experimental code
  As a visitor to Drupal.org
  I want to clone a sandbox repo

  Scenario: Sandbox has a repo with code

      Given I am at "/project/doobie/git-instructions"
#      And I see the text "git clone --recursive --branch master http://git.drupal.org/project/doobie.git"
    When I clone the "doobie" repo
    Then I should have a local copy
  
  Scenario: Sandbox has a repo with no code    
    Given I am at "/project/git_dev"
    When I click "Version control"
    Then I should see the heading "Empty Repository"     
    And I should see the text "Git on Drupal.org"
