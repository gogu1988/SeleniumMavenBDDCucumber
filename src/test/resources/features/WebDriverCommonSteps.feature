@WebDriverCommonSteps
Feature: WebDriver Common Steps

  Scenario Outline: Test of WebDriver Common Steps
    And user click the "button" on the "LoginPage"
    Then user get "" url
    And user submit "form" on the "RegisterPage"
    And user sendKeys "Hello" in "postEditBox" on the "HomePage"
    And user clear "AddressEditField" on the "ContactPage"
    When user get TagName of "signInButton" on the "LoginPage"
    When user get "class" Attribute of "signInButton" on the "LoginPage"
    Then user verify "checkBox" isSelected on the "RegisterPage"
    Then user verify "checkBox" isEnabled on the "RegisterPage"
    When user get Text of "button" on the "RegisterPage"
    When user find Elements with "identifier" of "cssSelector"
    When user find Element with "identifier" of "xpath"
    Then user verify "checkBox" isDisplayed on the "RegisterPage"
    When user get Location of "button" on the "RegisterPage"
    When user get Size of "button" on the "RegisterPage"
    When user get Rect of "button" on the "RegisterPage"
    When user get CssValue of "background-color" of "button" on the "RegisterPage"
    And user click using Actions on the "LoginPage"
    And user click the "button" using Actions on the "loginPage"
    And user clickAndHold using Actions on the "loginPage"
    And user clickAndHold the "button" using Actions on the "loginPage"
    And user right click using Actions on the "loginPage"
    And user right click the "button" using Actions on the "loginPage"
    And user double click using Actions on the "loginPage"
    And user double click the "button" using Actions on the "loginPage"
    And user drag the "dragble_Element" and drop on "destination_Element" on the "loginPage"
    And user drag the "dragble_Element" and drop at position x:20 and y:30 on the "loginPage"
    And user move the mouse to the position  x:1643 and y:18 on the "loginPage"
    And user move the mouse to the "dragble_Element" on the "loginPage"
    And user move the mouse to the "dragble_Element" with the position x:1643 and y:18 on the "loginPage"
    And user sendKeys "Hello" in "postEditBox" using actions on the "HomePage"
    Then user take screen shot
    Then user write the log as "Hello this is log"
    Examples: