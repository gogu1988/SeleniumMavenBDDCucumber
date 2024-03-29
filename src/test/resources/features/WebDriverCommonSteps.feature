@WebDriverCommonSteps
Feature: WebDriver Common Steps

  Scenario Outline: Test of WebDriver Common Steps
    And user click the "button" on the "LoginPage"
    Then user get "" url
    And user submit "form" on the "RegisterPage"
    And user sendKeys "Hello" in "postEditBox" on the "HomePage"
    And user clear "AddressEditField" on the "ContactPage"
    When user get TagName of "signInButton" on "LoginPage"
    When user get "class" Attribute of "signInButton" on "LoginPage"
    Then user verify "checkBox" isSelected on the "RegisterPage"
    Then user verify "checkBox" isEnabled on the "RegisterPage"
    When user get Text of "button" on "RegisterPage"
    When user find Elements with "identifier" of "cssSelector"
    When user find Element with "identifier" of "xpath"
    Then user verify "checkBox" isDisplayed on the "RegisterPage"
    When user get Location of "button" on "RegisterPage"
    When user get Size of "button" on "RegisterPage"
    When user get Rect of "button" on "RegisterPage"
    When user get CssValue of "background-color" of "button" on "RegisterPage"
    And user click using Actions on "LoginPage"
    And user click the "button" using Actions on the "loginPage"
    When user clickAndHold using Actions on the "loginPage"
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
    Then user take screen shot as "loginPage"
    Then user write the log as "Hello this is log"
    Then user take screen shot of "Email_Subscribe_section" on the "Component_Page" and save it as "Email_Subscribe_section" at "actual_image"
    Then user verify that "Email_Subscribe_Section" on the "Component_Page" and "<Expected_Image>" image are same in Mobile
    And user go to backward page
    And user go to forward page
    And user switch to window with the title as "google"
    And user scroll into view using java script for "Email_Subscribe_Section" on the "Component_Page" in Mobile

    Examples: