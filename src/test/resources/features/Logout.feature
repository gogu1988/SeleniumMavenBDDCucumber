@Logout

Feature: Run 1 Testing Logout Feature

  Scenario Outline: Logout Scenario
    Given User open "<Browser>" browser
    And User navigate to the google page
    Given User entered user name as "gogu"
    Then User entered password as "password"
    And User click on login button
    Then User verify welcome message

    And user verify "checkBox" isEnabled on the "RegisterPage"

    Examples:
      | Browser | UserName           | Password |
      | Chrome  | dadd@gmail.com | test     |