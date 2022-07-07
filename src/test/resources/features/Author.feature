@Author
Feature: Demo

  Scenario: Login to Author page
    Given user open "Chrome" browser
    And user get "AuthorInstance" url
    And user sendKeys "admin" in "UserName_EditBox" on the "Author_Login_Page"
    And user sendKeys "admin" in "Password_EditBox" on the "Author_Login_Page"
    And user click the "SignIn_Button" on the "Author_Login_Page"
    And user click the "Sites_Icon" on the "AEM_Navigation_Page"
    And user click the "NT_FlexShares_Column_Page" on the "NT_FlexShares_Sites_Page"
    And user close browser