Feature: New users can commit code to Drupal.org
  In order to improve and share my work 
  As a new user  
  I should be able to commit code to Drupal.org using my password

  Background: 
    Given I am logged in as "New Git" with the password "newgit1"

  Scenario: New Git has not agreed to terms of service
    Given I am at "/project/user"
    Then I should see the text "To learn about projects"
      And I should not see the link "Add a new project."

  Scenario: New Git agrees to terms of service
    Given I am at "/user"
    When I click "Edit"
      And I click "Git access"
      And I check "I agree to these terms" 
      And I press "Save"
      And I press "Confirm"
    Then I should see the text "Your Git username"

  Scenario: New Git, having agreed to terms of service, creates a project
    Given I am at "/project/user" 
    When I click "Add a new project"
      And for "Project type" I select "Modules"
      And for "Maintenance status" I select "Actively maintained"
      And for "Development status" I select "Under active development"
      And for "Project title" I enter "New Git's project"
      And for "Description" I enter "My new project"
      And I press "Save"
    Then I should see the text "The Git repository for this project has been enqueued"

  Scenario: New Git pushes code
    Given I am at "project/user"
    When I click "New Git's Project"
      And I click "Version control"
      And I execute the commands
    Then I should see the text "something on the web site"


      
    
