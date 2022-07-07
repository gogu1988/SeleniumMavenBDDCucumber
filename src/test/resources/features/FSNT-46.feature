@Header_Component @Smoke_Test @FSNT-46 @FSNT-74

Feature: Global Header Component | User Experience

  https://tools.publicis.sapient.com/jira/browse/FSNT-46

  Acceptance Criteria:
  1) Given the user is on Flexshares.com, when on the Home Page and other pages where applicable, This component should be as per the approved design.

  2) Given the user is on the Home Page and other pages where applicable of Flexshares.com.
  US site:
  a) Logo - when a user clicks on the logo they navigate to Home
  b) When a user clicks on primary Navigation - Image, Home, Funds, Insights (practice Management), Tools options Then the user should be navigated to the target URL.
  c) When a user clicks on Primary Navigation - international Site option it should switch to the international site.
  ●Language chooser dropdown with options for English (US), German (DE), Dutch (NL)
  e) Hover State draws the line from left to right under the text.
  f) Selected state is bold text with an orange underline.

  3) When a user clicks on Advisor Login/Registration it should open a modal.
  Note: Modal development is going to be a part of a different user stories.
  g) If the user is logged in, the label changes to "Hello, <first name>, and the dropdown arrow opens a menu with items:
  Note: This is going to be a part of different user stories.
  h) Account (opens page with advisor profile fields)

  ● Subscription (navigates to a page with subscription options, HubSpot for Phase 1)
  ● Team (opens Team page personalized to region based on zip code)
  ● Logout (logs advisor out and refreshes site to individual persona)
  ● International Site:

  4) No Tools option

  Note: Search is not in scope for phase one

  Figma Designs: https://www.figma.com/file/huInmewr1oEXnhwjL1Iq6U/?node-id=3111%3A42844
  Mobile Design: instead of the navigation menu bar, the header has a logo and hamburger icon. Clicking hamburger opens a popover page with the menu.
  Confluence:

  Accessibility Requirements:
  Heading Text: Skip Link button should be coded for keyboard access before the header
  Sub-Heading: Text Follow the requirements for headings.
  Body Text:

  As an author, I would like to use this header component which is a part of the global component and also contains navigation for major landing pages, US/International sites, and Advisor content.


  Background: Launching User Experience instance on AEM
    Given user open "Chrome" browser
    And user get "User_Experience_Instance" url
    And user click the "Experience_Fragments" on the "AEM_Navigation_Page"
    And user click the "NT_FlexShares_Fragments" on the "Experience_Fragments_Page"
    And user click the "Language" on the "Fragments_Column"
      | Language |
      | us       |
      | en       |
    And user click the "Site" on the "Language_Column"
    And user click the "Header" on the "Site_Column"
    And user click the "Edit" on the "Experience_Fragments_Page"
    Then user verify "Header_Component" isDisplayed on the "Header_Page"

  Scenario: verify logo is configurable in header in publish instance
    Given user is in "Author_Instance"
    And user click the "Page_Information_Icon" on the "Header_Page"
    And user hover to "View_as_published" on the "Page_Information_Icon"
    And user click the "View_as_published" on the "Page_Information_Icon"
    And user get "Publish_Instance" url
    And user verify "Header" isDisplayed on the "Header_Component"
    And user click the "Logo" on the "Header_Component"
    Then user verify whether it redirects to "Home_Page"
    #verify in all browsers ("Firefox","Edge")
    #verify in all devices

  Scenario: Verify the primary Navigations in header component
    Given user is in "Author_Instance"
    And user click the "Page_Information_Icon" on the "Header_Page"
    And user hover to "View_as_published" on the "Page_Information_Icon"
    And user click the "View_as_published" on the "Page_Information_Icon"
    And user get "Publish_Instance" url
    And user click the "Primary_Navigation" on the "Header_component"
      | Primary_Navigation |
      | Image              |
      | Home               |
      | Funds              |
      | Insights           |
      | Tools              |
    Then verify it redirects to the corresponding url
    #verify in all browsers ("Firefox","Edge")
    #verify in all devices
    #Im mobile device instead of navigation menu bar, the header has a logo and hamburger.

  Scenario: Verify International site option in Header component
    Given user is in "Author_Instance"
    And user click the "Page_Information_Icon" on the "Header_Page"
    And user hover to "View_as_published" on the "Page_Information_Icon"
    And user click the "View_as_published" on the "Page_Information_Icon"
    And user get "Publish_Instance" url
    And user click the "US_Site_Dropdown" on the "Header_component"
    And user hover to the "Site_Options"
      | Site_Options            |
      | English(US)             |
      | Deutsh  (DE) (German)   |
      | Nederlands (NL) (Dutch) |
    And user click the "Site_Options" on the "US_Site"
    Then verify it redirects to the corresponding url
    #verify in all browsers ("Firefox","Edge")
    #verify in all devices

  Scenario: Verify hovering state under the primary navigations in Header
    Given user is in "Author_Instance"
    And user click the "Page_Information_Icon" on the "Header_Page"
    And user hover to "View_as_published" on the "Page_Information_Icon"
    And user click the "View_as_published" on the "Page_Information_Icon"
    And user get "Publish_Instance" url
    And user hover to the "Primary_Navigations"
      | Primary_Navigation |
      | Image              |
      | Home               |
      | Funds              |
      | Insights           |
      | Tools              |
    Then verify it get bold text and orange line from left to right
    #verify in all browsers ("Firefox","Edge")
    #verify in all devices

  Scenario: Verify advisor Login/Registration
    Given user is in "Author_Instance"
    And user click the "Page_Information_Icon" on the "Header_Page"
    And user hover to "View_as_published" on the "Page_Information_Icon"
    And user click the "View_as_published" on the "Page_Information_Icon"
    And user get "Publish_Instance" url
    And user click the "Login/Register" on the "Header_Component"
    Then verify whether it opens respective modal
    #verify in all browsers ("Firefox","Edge")
    #verify in all devices






















