Feature: Visitor clones sandbox repository

  As a visitor to Drupal.org
  I want to clone a sandbox repo
  So that I can see if it works for me

  Scenario: Sandbox has a repo with code

  Given that I am logged in as a user
  When I create a new project
  Then I should be able to clone the sandbox repository.