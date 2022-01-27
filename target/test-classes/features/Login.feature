@Login

Feature: Run 1 Testing Login Feature


  Background: Test BackGround
    Given testing background

  Scenario Outline: Login Scenario 1
    Given user open "<Browser>" browser
    And user navigate to the google page
    And user get Text of "<Element>" on the "loginPage"
    Then user verify element text "<ExpectedText>"
    When user get TagName of "<Element>" on the "loginPage"
    When user get "class" Attribute of "<Element>" on the "loginPage"
    When user get Text of "<Element>" on the "loginPage"
    When user get Location of "<Element>" on the "loginPage"
    When user get Size of "<Element>" on the "loginPage"
    When user get Rect of "<Element>" on the "loginPage"
    When user get CssValue of "background-color" of "<Element>" on the "loginPage"
    And user click using Actions on the "loginPage"

    Examples:
      | Browser | Element | ExpectedText |
      | Chrome  | gmail   | Gmail        |
      | Chrome  | images  | Images       |
      | Chrome  | telugu  | తెలుగు       |

  Scenario Outline: Login Scenario 2
    Given user open "<Browser>" browser
    And user navigate to the google page
    And user get Text of "<Element>" on the "loginPage"
    Then user verify element text "<ExpectedText>"
    When user get TagName of "<Element>" on the "loginPage"
    When user get "class" Attribute of "<Element>" on the "loginPage"
    When user get Text of "<Element>" on the "loginPage"
    When user get Location of "<Element>" on the "loginPage"
    When user get Size of "<Element>" on the "loginPage"
    When user get Rect of "<Element>" on the "loginPage"
    When user get CssValue of "background-color" of "<Element>" on the "loginPage"
    And user click using Actions on the "loginPage"

    Examples:
      | Browser | Element | ExpectedText |
      | Chrome  | gmail   | Gmail        |