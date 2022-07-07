@Publish @Title_Component @Font_Styles @Smoke_Test @FSNT-311

Feature: Title Component (with all title styles) | User Experience

  As an author, I want to be able to use all font styles in order to create pages for Flexshares.com

  Confluence link:
  https://tools.publicis.sapient.com/confluence/display/FSNT/Typography

  Accessibility Requirements:
  - checklist: https://tools.publicis.sapient.com/confluence/x/NK9mW
  Heading Text:
  Sub-Heading: Text Follow the requirements for headings.
  Body Text:
  Primary CTA, Secondary CTA Follow requirements for CTAs with Aria Label.

  Background: Launching Author instance on Playground page
    Given user open "Chrome" browser
    And user get "AuthorInstance" url
    And user sendKeys "admin" in "UserName_EditBox" on the "Author_Login_Page"
    And user sendKeys "admin" in "Password_EditBox" on the "Author_Login_Page"
    And user click the "SignIn_Button" on the "Author_Login_Page"
    And user click the "Sites_Icon" on the "AEM_Navigation_Page"
    And user click the "NT_FlexShares_Column_Page" on the "NT_FlexShares_Sites_Page"

  Scenario: Verify user able to use font styles for creating pages in "Flexshares.com"
    Given user click the "Testing_Page" on the "Advisors_Page"
    When user click the "edit" on the "NT_FlexShares_Sites_Page"
    And user click the "Drag_Components_here" on the "Testing_Page"
    And user click the "Insert_Component" on the "Drag_Components_here"
    And user sendKeys "Title" in "Insert_New_Component" on the "pop_up"
    And user click the "Title_component" on the "Search_Box"
    And user click the "Title_component" on the "Testing_Page"
    And user click the "Configure" on the "Title_component"
    And user sendKeys "This is for testing" in "Title" on the "Title_Component"
    And user click the "Type/Size_dropdown" on the "Title_Component"
    And user click the "Type/Size" on the "Title_Component"
      | Type/Size |
      | H1        |
      | H2        |
      | H3        |
    And user click the "Page_Information_Icon" on the "Testing_Page"
    And user hover to "View_as_published" on the "Page_Information_Icon"
    And user get "Publish_Instance" url
    And user verify "Type/Size" isDisplayed on the "Testing_Page"
    #verify in all browsers ("Firefox","Edge")
