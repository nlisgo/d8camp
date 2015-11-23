<?php

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {
  public function cleanNodes() {
    $this->nodes = [];
  }

  public function cleanUsers() {
    $this->users = [];
  }

  public function cleanTerms() {
    $this->terms = [];
  }

  public function cleanRoles() {
    $this->roles = [];
  }
}
