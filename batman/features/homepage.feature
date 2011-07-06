Feature: Batman homepage

  Scenario: Heading
    When I am on the homepage
    Then I should see "Batman"

  Scenario: Version
    When I am on the homepage
    Then I should see "This is a Rails 2.3.5 application"

