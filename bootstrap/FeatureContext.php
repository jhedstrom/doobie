<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;
use Symfony\Process;

require 'vendor/.composer/autoload.php';

//
// Require 3rd-party libraries here:
//
//   require_once 'PHPUnit/Autoload.php';
//   require_once 'PHPUnit/Framework/Assert/Functions.php';
//

/**
 * Features context.
 */
class FeatureContext extends BehatContext
{
  /**
   * Initializes context.
   *
   * Every scenario gets it's own context object.
   *
   * @param array $parameters 
   *   Context parameters (set them up through behat.yml).
   */
  public function __construct(array $parameters) {
    $driver = new \Behat\Mink\Driver\Selenium2Driver('firefox', array());  
    $firefox = new \Behat\Mink\Session($driver);
    $driver = new \Behat\Mink\Driver\GoutteDriver();
    $goutte = new \Behat\Mink\Session($driver);
    $this->mink = new \Behat\Mink\Mink(array('firefox' => $firefox, 'goutte' => $goutte));
    $this->mink->setDefaultSessionName('firefox');
  }

  public function __destruct() {
    $this->mink->stopSessions();
  }

  /**
   * @Given /^that I am logged in as a user$/
   */
  public function thatIAmLoggedInAsAUser() {
    $session = $this->mink->getSession();
    $session->visit('http://drupal.org/node/add/project');
    $page = $session->getPage();
    $element = $page
      ->findLink('Modules');
    echo $element->getHTML() . "\n";
    $element->click();
  }

  /**
   * @When /^I create a new project$/
   */
  public function iCreateANewProject() {
    /*
    $page = $this->mink->getSession()->getPage();
    echo $page->getContent();
    $element = $page->find('h1');
     echo $plainText = $element->getText() . "\n";
     */
  }

  /**
   * @Then /^I should be able to clone the sandbox repository\.$/
   */
  public function iShouldBeAbleToCloneTheSandboxRepository() {
    //throw new PendingException();
  }

}
