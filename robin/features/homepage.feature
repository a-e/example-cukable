Feature: Homepage

  Scenario: Heading
    When I am on the homepage
    Then I should see "Robin"

  Scenario: Version
    When I am on the homepage
    Then I should see "This is a Rails 3.1.0.rc4 application"

