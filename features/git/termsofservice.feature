Feature: Users must agree to the terms of service to commit code
  In order to prove that I am aware of the terms of service
  As a user
  I need to agree to the terms of service before I can commit code

  Background: 
   Given I am logged in as a user with the "authenticated user" role

  Scenario: Git User agrees to terms of service for the first time
    Given I am at "/user"
    When I click "Edit"
      And I click "Git access"
      And I check "I agree to these terms" 
      And I press "Save"
      And I press "Confirm"
    Then I should see the text "Your Git username"

  Scenario: Git User has agreed to terms of service
    When I visit "/project/user"
    Then I should see the link "Add a new project"

  Scenario: Git User creates a project
    Given I am at "/node/add/project-project"
    When I select the radio button "Modules" with id "edit-project-type-14"
      And for "Maintenance status" I enter "13028" 
      And for "Development status" I enter "9988" 
      And for "Project title" I enter "Pink Ponies"
      And for "Description" I enter "Something"
      And I press "Save"
   Then I should see the text "Pink Ponies"

  Scenario: Git User no longer agrees to terms of service
    Given I am at "/user"
    When I click "Edit" 
     And I click "Git access" 
     And I uncheck "I agree to these terms"
     And I press "Update Git access agreement" 
    Then I should see the text "You will not be able to use Git"

  Scenario: Git User, having disagreed, tries to edit an existing project
    When I visit "/project/user"
    Then I should see the link "View"
      And I should not see the link "Edit"
   
  Scenario: Git User decides to agree again
    Given I am at "/user"
    When I click "Edit"
      And I click "Git access"
      And I check "I agree to these terms"
      And I press "Save"
    Then I should not see the text "You will not be able to use Git"
      And I should see the text "Git user configuration"
