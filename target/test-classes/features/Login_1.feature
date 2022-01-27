@Login_1

Feature: Run 2 Verifying Login Feature

  Scenario Outline: Login Scenario
    Given User open "<Browser>" browser
    And User navigate to the google page
    Given User entered user name as "gogu"
    Then User entered password as "password"
    And User click on login button
    Then User verify welcome message

    Examples:
      | Browser | UserName           | Password |
      | Chrome  | gogu1988@gmail.com | test     |
      | Chrome  | gogu1988@gmail.com | test     |
      | Chrome  | gogu1988@gmail.com | test     |