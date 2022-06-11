Feature: Demo
  
  Scenario: Login to Author page
    Given user open "Chrome" browser
    Then user get "http://inblrsclfsnt001.global.publicisgroupe.net:4502/aem/start.html" url
    And user sendKeys "admin" in "UserName_EditBox" on the "AuthorLoginPage"
    And user sendKeys "admin" in "Password_EditBox" on the "AuthorLoginPage"
    And user click the "SignIn_Button" on the "AuthorLoginPage"
    And user close browser