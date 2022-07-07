@Publish @FSNT-169 @Smoke_Test

Feature: Responsive header and footer component - 2 additonal break points

  Add responsive UI for header and footer component for below break points
  1. <576px
  2. 738px
  3. 1120px
  4. 1440px

  Background: Launching Author instance on Playground page
    Given user open "Chrome" browser
    And user get "AuthorInstance" url
    And user sendKeys "admin" in "UserName_EditBox" on the "Author_Login_Page"
    And user sendKeys "admin" in "Password_EditBox" on the "Author_Login_Page"
    And user click the "SignIn_Button" on the "Author_Login_Page"
    And user wait for the page to load
    And user click the "Sites_Icon" on the "AEM_Navigation_Page"
    And user click the "NT_FlexShares_Column_Page" on the "NT_FlexShares_Sites_Page"

  @header
  Scenario: verify responsive UI for header
    Given user click the "Testing_Page" on the "Advisors_Page"
    When user click the "create" on the "NT_FlexShares_Sites_Page"
    And user hover to "page"
    And user click the "page"
    And user click the "Content_Page_Template" on the "Create_Page"
    And user click the "Next" on the "Create_Page"
    And user sendKeys "Pixel_Testing" in "Title" on the "Title_and_Tags"
    And user click the "create" on the "Create_Page"
    And user click the "Open" on the "Success_Popup"
    And user click the "Preview" on the "Pixel_Testing_page"
    And user right click using Actions on the "Pixel_Testing_Page"
    And user hover to "Inspect"
    And user click the "Inspect"
    And user click the "Toogle_Device_emulation" on the "DOM_Structure"
    And user sendKeys "pixel" in "width" on the "Dimensions"
      | pixel |
      | 1440  |
      | 320   |
      | 1119  |
      | 768   |
    Then user verify respective responsive UI for header
      #verify in all browser


  @footer
  Scenario: verify responsive UI for footer
    Given user click the "Testing_Page" on the "Advisors_Page"
    When user click the "create" on the "NT_FlexShares_Sites_Page"
    And user hover to "page"
    And user click the "page"
    And user click the "Content_Page_Template" on the "Create_Page"
    And user click the "Next" on the "Create_Page"
    And user sendKeys "Pixel_Testing" in "Title" on the "Title_and_Tags"
    And user click the "create" on the "Create_Page"
    And user click the "Open" on the "Success_Popup"
    And user click the "Preview" on the "Pixel_Testing_page"
    And user right click using Actions on the "Pixel_Testing_Page"
    And user hover to "Inspect"
    And user click the "Inspect"
    And user click the "Toogle_Device_emulation" on the "DOM_Structure"
    And user sendKeys "pixel" in "width" on the "Dimensions"
      | pixel |
      | 1440  |
      | 320   |
      | 1119  |
      | 768   |
    Then user verify respective responsive UI for footer
        #verify in all browsers





