Feature: Create Base Page Template for FlexShares

  Acceptance Criteria:-
  •As a developer, I would like to see that:
  1) Base Page Template is to be created for flexshares.com pages that will include all global rendering scripts (design, server variables, etc.) so that I can make global changes across all pages and components as it applies to flexshares.com
  2) This template should support the option to turn off parts of the navigation.
  3) The Flexshares Design is included in the Head area of the Base Page Template
  •NOTE: Completely new design will fix the CSS/JS on non-redesign pages later.
  4) The Responsive Framework, Bootstrap is included in the Head area of the Base Page Template
  5) The JS Framework, jQuery is included in the Head area of the Base Page Template
  6) The Cloud Services Scripts are included in the Head area of the Base Page Template
  7) The OOTB includes scripts for Touch UI to support authoring of the Base Page Template
  8) The base scripts are defined:
  •	head - include all the scripts
  •	body - empty for now will be overridden
  9) All scripts above need to be tested that it is working properly
  NOTE: For purposes of testing the scripts, a test code should be added to the "body” page but would have to be removed once testing is done.
  •	The following page properties would have to be rendered within the HTML body for SEO purposes
  •	Page Title maps to <title>
  •	Page Description maps to <meta name=“description”>
  10) Beak points:
  o	1375-1920 Desktop
  o	0-320 Mobile

  Description:-
  As a developer, I would like to have a base template for Flexshares.com that will include all global rendering scripts (design, server variables, etc.) so that I can make global changes across all pages and components as it applies to flexshares.com

  Background: Navigate to NT FlexShares Templates
    Given user open "Chrome" browser
    And user get "AuthorInstance" url
    And user sendKeys "admin" in "UserName_EditBox" on the "Author_Login_Page"
    And user sendKeys "admin" in "Password_EditBox" on the "Author_Login_Page"
    And user click the "SignIn_Button" on the "Author_Login_Page"
    Then user click the "Tools_Icon" on the "AEM_Home_Page"
    And user click the "Templates_Icon" on the "Tools_Page"
    And user click the "NT_FlexShares_Folder_Icon" on the "Templates_Page"

  Scenario Outline: Create Templates using different Base Templates
    Given user click the "Create_Button" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "<Template_Type>" on the "Pick_a_Template_Type_Page"
    And user click the "Next_Button" on the "Pick_a_Template_Type_Page"
    And user sendKeys "<Template_Title>" in "Template_Title_EditBox" on the "Template_Details_Page"
    And user sendKeys "<Description>" in "Description_EditBox" on the "Template_Details_Page"
    And user click the "Create_Button" on the "Template_Details_Page"
    Then user verify "Success_Message" isDisplayed on the "Success_Popup_of_Template_Details_Page"
    And user click the "Done_Button" on the "Success_Popup_of_Template_Details_Page"
    Then user verify "Created_Template" isDisplayed on the "NT_FlexShares_Folder_of_Templates_Page"

    Examples:
      | Template_Type                                     | Template_Title                                       | Description                                                          |
      | NT_FlexShares_Base_Page                           | QA_NT_FlexShares_Base_Page                           | QA - NT_FlexShares_Base_Page - Description                           |
      | NT_FlexShares_Site_Empty_Page                     | QA_NT_FlexShares_Site_Empty_Page                     | QA - NT_FlexShares_Site_Empty_Page - Description                     |
      | NT_FlexShares_Site_Empty_Experience_Fragment_Page | QA_NT_FlexShares_Site_Empty_Experience_Fragment_Page | QA - NT_FlexShares_Site_Empty_Experience_Fragment_Page - Description |

  Scenario: Validate Open button functionality on Success_Pop_of_Template_Details_Page while creating Template
    Given user click the "Create_Button" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "NT_FlexShares_Base_Page" on the "Pick_a_Template_Type_Page"
    And user click the "Next_Button" on the "Pick_a_Template_Type_Page"
    And user sendKeys "Template_Title" in "Template_Title_EditBox" on the "Template_Details_Page"
    And user sendKeys "Description" in "Description_EditBox" on the "Template_Details_Page"
    And user click the "Create_Button" on the "Template_Details_Page"
    Then user verify "Success_Message" isDisplayed on the "Success_Popup_of_Template_Details_Page"
    And user click the "Open_Button" on the "Success_Popup_of_Template_Details_Page"
    Then verify AEM editor is opened a new page in new tab with page title as "Template_Title"

  Scenario: Verify Enable functionality of Template
    Given user move the mouse to the "QA_NT_FlexShares_Base_Page_Template" on the "NT_FlexShares_Folder_of_Templates_Page"
    Then user verify "Draft_Icon_of_QA_NT_FlexShares_Base_Page_Template" isDisplayed on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "More_Options_Icon" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Enable_Option" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Cancel_Button" on the "Enable_Popup_of_NT_FlexShares_Folder_of_Templates_Page"
    Then user verify "Draft_Icon_of_QA_NT_FlexShares_Base_Page_Template" isDisplayed on the "NT_FlexShares_Folder_of_Templates_Page"
    And user move the mouse to the "QA_NT_FlexShares_Base_Page_Template" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "More_Options_Icon" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Enable_Option" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Enable_Button" on the "Enable_Popup_of_NT_FlexShares_Folder_of_Templates_Page"
    Then user verify "Enable_Icon_of_QA_NT_FlexShares_Base_Page_Template" isDisplayed on the "NT_FlexShares_Folder_of_Templates_Page"
    And user move the mouse to the "QA_NT_FlexShares_Base_Page_Template" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "More_Options_Icon" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Disable_Option" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Cancel_Button" on the "Disable_Popup_of_NT_FlexShares_Folder_of_Templates_Page"
    Then user verify "Enable_Icon_of_QA_NT_FlexShares_Base_Page_Template" isDisplayed on the "NT_FlexShares_Folder_of_Templates_Page"
    And user move the mouse to the "QA_NT_FlexShares_Base_Page_Template" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "More_Options_Icon" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Disable_Option" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Disable_Button" on the "Disable_Popup_of_NT_FlexShares_Folder_of_Templates_Page"
    Then user verify "Disable_Icon_of_QA_NT_FlexShares_Base_Page_Template" isDisplayed on the "NT_FlexShares_Folder_of_Templates_Page"

  Scenario: Verify publish functionality of Template
    Given user move the mouse to the "QA_NT_FlexShares_Base_Page_Template" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "More_Options_Icon" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Publish_Option" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Publish_Button" on the "Publish_Page"
    Then user verify "Publish_Success_Message" isDisplayed on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "More_Options_Icon" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Publish_Option" on the "NT_FlexShares_Folder_of_Templates_Page"
    Then user verify "Publish_Success_Message" isDisplayed on the "NT_FlexShares_Folder_of_Templates_Page"

  Scenario: Verify Policy option in Container of Template
    Given user move the mouse to the "QA_NT_FlexShares_Base_Page_Template" on the "NT_FlexShares_Folder_of_Templates_Page"
    And user click the "Edit_Icon" on the "NT_FlexShares_Folder_of_Templates_Page"
    Then verify AEM editor is opened a new page in new tab with page title as "QA_NT_FlexShares_Base_Page_Template"
    And user click the "Container" on the "AEM_Editer_Page"
    And user click the "Policy_Icon" on the "Container_Options_Menu"
    Then verify user is able to configure component elements
    And create a page using this template
    Then verify that only configure components are displayed

  Scenario: Verify page creation using disabled template
    Given user have disabled template
    Then verify that user is not able to create a page using that disabled template

  Scenario: Verify template functionality
    Given user is on templates page
    And select Base page template
    Then verify Base page template have Container option along with header and footer
    And select site empty experience fragment template
    Then verify site empty experience fragment template have Container option only
    And select site empty page template
    Then verify site empty experience fragment template have Container option only






      




