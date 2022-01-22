@Login

Feature: Run 1 Testing Login Feature

  Scenario Outline: Login Scenario 1
    Given User open "<Browser>" browser
    And User navigate to the google page
    Given User entered user name as "<UserName>"
    Then User entered password as "password"
    And User click on login button
    Then User verify welcome message

    Examples:
      | Browser | UserName           | Password |
      | Chrome  | gogu1988@gmail.com | test     |
      | Chrome  | shasi@gmail.com    | test     |
      | Chrome  | vishnu@gmail.com   | test     |