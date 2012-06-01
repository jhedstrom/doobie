Feature: Use ssh keys to authenticate for committing code
  In order to save time when I push code to Drupal.org
  As a user 
  I need to be able to use ssh keys during the authentication process

  Background: 
  Given a user named "Git User" with one key
    And a user named "Git Vetted" with one key
    And Git User has a sandbox named "Key Test"
    And Git Vetted has a project named "SSH Key Test"
  
  Scenario: Git user pushes code but the key fails (does it matter how it fails?)
    Given I am logged in as "Git User" 
      And I am at "/user"
    When I click "Your projects"
      And I click "Key Test"
      And I click "View commits"
      And I push a commit with the message "Bad key"
      And I am prompted for my password 
    Then my password should succeed
      And I should see the text "Bad key"

  Scenario: Git User uploads a key
    Given I am logged in as "Git User"
      And I am at "/user"
      And I have the private key "correctkeyname"
    When I click "SSH keys"
      And I click "Add a public key" 
      And for "Key" I enter "*key*"
    Then I should see the text "The SSH public key *fingerprint* has been saved"

  Scenario: Git user pushes code
    Given I am logged in as "Git User"
    Given that I am at "/user"
      And I click "Key Test"
      And I click "View commits"
    When I push a commit with the message "A single key"
      And I reload the page
    Then I should see the text "A single key"
  
  Scenario: Git user pushes code but the key isn't presen   

  
