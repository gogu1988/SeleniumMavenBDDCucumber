@Header_Component @Smoke_Test @FSNT-46 @FSNT-74

Feature: Global Header Component | Authoring

  1. The Flexshares Design is included in the Header component, which allows the author to configure the below;
  I. Logo
  ● Image: Brower path or Image upload
  ● Link: Redirection URL (configure to Homepage)
  ● Alt text
  II. Search box- On click expands the text box and on submission redirects to the search results page (FUTURE Phase 2)
  ● Placeholder text
  ● Link to search results page
  Note: don't show this for phase 1
  III. US site needs to be authored
  IV.International Site Language toggle
  ● English (US)
  ● Deutsch (DE) (German)
  ● Nederlands (NL) (Dutch)
  ●  Allow editing to display text
  ●  Link for the text
  V. Advisor Login/Register
  ● Allow editing to display text
  ● Link for the text
  2) Top links- Redirect as configured
  3) Should be included in the base page template to appear on all pages.
  4) All fields above need to be tested that it is working properly after authoring.
  5) Account (opens a page with advisor profile fields)
  ● Subscription (navigates to a page with subscription options, HubSpot for Phase 1)
  ● Team (opens Team page personalized to region based on zip code)
  ● Logout (logs advisor out and refreshes site to individual persona)
  7) No Tools option
  8) Navigation
  NOTE: Navigation is part of another story

  On mobile, the header consists of the FlexShares logo (links to the home page) and the 'hamburger' menu icon that slides the full-page overlay menu out from the right side of the viewport.


  Background: Launching Author instance on AEM
    Given user open "Chrome" browser
    And user get "AuthorInstance" url
    And user sendKeys "admin" in "UserName_EditBox" on the "Author_Login_Page"
    And user sendKeys "admin" in "Password_EditBox" on the "Author_Login_Page"
    And user click the "SignIn_Button" on the "Author_Login_Page"
    And user wait for the page to load
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

  Scenario: Verify site Header Logo is configurable in Header
    Given user open "Header_Page" browser
    And user click the "Header_Component" on the "Header_Page"
    And user click the "Configure" on the "Header_Icon"
    And user click the "Edit" on the "Site_Header_Logo"
    And user get "FS-Header-Logo.jpeg" url
    And user click the "Share_Link" on the "FS-Header-Logo_Page"
      #Give all the details for sharing the link and click share and verify that
    And user click the "Download" on the "FS-Header-Logo_Page"
      #verify the download functionality
    And user click the "Checkout" on the "FS-Header-Logo_Page"
      #Verify the checkout functionality
    And user click the "Properties" on the "FS-Header-Logo_Page"
      #verify the properties functionality
    And user click the "Edit" on the "FS-Header-Logo_Page"
      #Verify the functionality of Edit
    And user click the "Annotate" on the "FS-Header-Logo_Page"
      #Verify the functionality of Annotate
    And user click the "To_Collection" on the "FS-Header-Logo_Page"
      #Verify the functionality
    And user click the "Move" on the "FS-Header-Logo_Page"
      #Verify the functionality of move
    And user click the "Quick_Publish" on the "FS-Header-Logo_Page"
      #Verify the functionality
    And user verify "Modified_Header_Image" isDisplayed on the "Publish_page"
    And user click the "Clear" on the "site_Header_Logo"
    And user click the "Done" on the "Global_Header_Popup"
      #verify manually
    And user click the "pick" on the "Site_Header_Logo"
      #Verify manually
    And user click the "Open_Selection_Dialog" on the "Link_URL"
      #verify manually
    Then user click the "Done" on the "Global_Header_popup"
          #Also verify by clicking cancel

  Scenario: Verify Nav Menu Items is configurable in Header
    Given user open "Header_Page" browser
    And user click the "Header_Component" on the "Header_Page"
    And user click the "Configure" on the "Header_Icon"
    And user click the "Nav_Menu_Items" on the "Global_Header_Popup"
    #Verify the functionalities in Nav Menu Items
    Then user click the "Done" on the "Global_Header_popup"
        #Also verify by clicking cancel

  Scenario: Verify Language Site Toogle is configurable in Header
    Given user open "Header_Page" browser
    And user click the "Header_Component" on the "Header_Page"
    And user click the "Configure" on the "Header_Icon"
    And user click the "Language_Site_Toogle" on the "Global_Header_Popup"
    #Verify the functionalities in Language site Toogle
    Then user click the "Done" on the "Global_Header_popup"
        #Also verify by clicking cancel

  Scenario: Verify Advisor Login Opt is configurable in Header
    Given user open "Header_Page" browser
    And user click the "Header_Component" on the "Header_Page"
    And user click the "Configure" on the "Header_Icon"
    And user click the "Advisor_Login_Opt" on the "Global_Header_Popup"
    #Verify the functionalities in Advisor Login Opt
    Then user click the "Done" on the "Global_Header_popup"
    #Also verify by clicking cancel



















