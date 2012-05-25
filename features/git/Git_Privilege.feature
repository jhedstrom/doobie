Feature: Git users can commit code to Drupal.org
  In order improve and share my code
  Any user who has agreed to the terms of service
  I want to creawte a sandbox project

  Scenario:
  Given I am at "/user/register"
  When I enter "doobie_terms" for "Username"
  And I enter "doobie_terms@happypunch.com" for "E-mail address"
  And I enter "Afghanistan" for "Country"
  And I press "Create new account"
  Then I should see the text "Your password and further instructions have been sent to your e-mail address." 
   
