@Global_Header @Sprint_5
Feature: Verify Global Header functionality

  @Verify_underline_graphics_for_links_in_Header_Component
  Scenario Outline: Verify underline graphics for links in Header Component
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url
    And user wait for 2 sec
    Then user verify that "Home_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Home_Link_Section_Before" image are same
    And user move the mouse to the "Home_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that "Home_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Home_Link_Section_After" image are same
    Then user verify that "Funds_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Funds_Link_Section_Before" image are same
    And user move the mouse to the "Funds_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that "Funds_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Funds_Link_Section_After" image are same
    Then user verify that "Insights_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Insights_Link_Section_Before" image are same
    And user move the mouse to the "Insights_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that "Insights_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Insights_Link_Section_After" image are same
    Then user verify that "Tools_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Tools_Link_Section_Before" image are same
    And user move the mouse to the "Tools_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that "Tools_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Tools_Link_Section_After" image are same
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Edge    |


  @Verify_underline_graphics_for_links_in_Header_Component
  Scenario Outline: Verify underline graphics for links in Header Component
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url
    And user wait for 2 sec
    Then user verify that "Home_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Home_Link_Section_Before_Firefox" image are same
    And user move the mouse to the "Home_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that "Home_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Home_Link_Section_After_Firefox" image are same
    Then user verify that "Funds_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Funds_Link_Section_Before_Firefox" image are same
    And user move the mouse to the "Funds_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that "Funds_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Funds_Link_Section_After_Firefox" image are same
    Then user verify that "Insights_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Insights_Link_Section_Before_Firefox" image are same
    And user move the mouse to the "Insights_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that "Insights_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Insights_Link_Section_After_Firefox" image are same
    Then user verify that "Tools_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Tools_Link_Section_Before_Firefox" image are same
    And user move the mouse to the "Tools_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that "Tools_Link_Section" on the "Global_Header_Component" and "Global_Header_Component\\Tools_Link_Section_After_Firefox" image are same
    And user close browser

    Examples:
      | Browser |
      | Firefox |


  @Verify_Header_component_UI
  Scenario Outline: Verify Header component UI
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url
    And user wait for 2 sec
    Then user verify that "Header_Section" on the "Global_Header_Component" and "Global_Header_Component\\Global_Header" image are same
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Edge    |


  @Verify_Header_component_UI
  Scenario Outline: Verify Header component UI
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url
    And user wait for 2 sec
    Then user verify that "Header_Section" on the "Global_Header_Component" and "Global_Header_Component\\Global_Header_Firefox" image are same
    And user close browser

    Examples:
      | Browser |
      | Firefox |


  @Verify_nav_links_on_header
  Scenario Outline: Verify nav links on header
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url
    And user click the "Header_Logo" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that a new page opened in same tab with page title not as "Global_Header"
    And user go to backward page
    And user click the "Home_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that a new page opened in same tab with page title not as "Global_Header"
    And user go to backward page
    And user click the "Funds_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that a new page opened in same tab with page title not as "Global_Header"
    And user go to backward page
    And user click the "Insights_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that a new page opened in same tab with page title not as "Global_Header"
    And user go to backward page
    And user click the "Tools_Link" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify that a new page opened in same tab with page title not as "Global_Header"
    And user go to backward page
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |


  @Verify_dropdown_menu_section_UI
  Scenario Outline: Verify dropdown menu section UI
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url
    And user wait for 2 sec
    And user click the "Dropdown_Menu_Icon" on the "Global_Header_Component"
    And user wait for 4 sec
    Then user verify that "Dropdown_Menu_Section" on the "Global_Header_Component" and "Global_Header_Component\\Dropdown_Menu_Section" image are same
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Edge    |


  @Verify_dropdown_menu_section_UI
  Scenario Outline: Verify dropdown menu section UI
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url
    And user wait for 2 sec
    And user click the "Dropdown_Menu_Icon" on the "Global_Header_Component"
    And user wait for 4 sec
    Then user verify that "Dropdown_Menu_Section" on the "Global_Header_Component" and "Global_Header_Component\\Dropdown_Menu_Section_Firefox" image are same
    And user close browser

    Examples:
      | Browser |
      | Firefox |


  @Verify_dropdown_menu_section_UI
  Scenario Outline: Verify dropdown menu section UI
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url
    And user wait for 2 sec
    And user click the "Dropdown_Menu_Icon" on the "Global_Header_Component"
    And user wait for 4 sec
    Then user verify that "Dropdown_Menu_Section" on the "Global_Header_Component" and "Global_Header_Component\\Dropdown_Menu_Section_Firefox" image are same
    And user close browser

    Examples:
      | Browser |
      | Firefox |


  @Multi_language_site_launch
  Scenario Outline: Multi language site launch
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url
    And user wait for 2 sec
    Then user verify the text of "Language_Label" on the "Global_Header_Component" is equal to "US Site"
    And user click the "Globe_Icon" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify the text of "Language_Option_with_Tick_Icon" on the "Global_Header_Component" is equal to "US Site"
    And user click the "International_EN_Site_Dropdown_Option" on the "Global_Header_Component"
    Then user verify the text of "Language_Label" on the "Global_Header_Component" is equal to "International EN Site"
    And user click the "Globe_Icon" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify the text of "Language_Option_with_Tick_Icon" on the "Global_Header_Component" is equal to "International EN Site"
    And user click the "International_DE_Site_Dropdown_Option" on the "Global_Header_Component"
    Then user verify the text of "Language_Label" on the "Global_Header_Component" is equal to "International DE Site"
    And user click the "Globe_Icon" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify the text of "Language_Option_with_Tick_Icon" on the "Global_Header_Component" is equal to "International DE Site"
    And user click the "International_NL_Site_Dropdown_Option" on the "Global_Header_Component"
    Then user verify the text of "Language_Label" on the "Global_Header_Component" is equal to "International NL Site"
    And user click the "Globe_Icon" on the "Global_Header_Component"
    And user wait for 2 sec
    Then user verify the text of "Language_Option_with_Tick_Icon" on the "Global_Header_Component" is equal to "International NL Site"

    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |


  @Verify_Header_component_UI_in_mobile
  Scenario Outline: Verify Header component UI in mobile
    Given user open "<Device>" device
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url in Mobile
    And user wait for 2 sec
    Then user verify that "Header_Section" on the "Global_Header_Component" and "<Expected_Image>" image are same in Mobile
    And user close device

    Examples:
      | Device             | Expected_Image                                            |
      | iPad Air           | Global_Header_Component\\Global_Header_iPad_Air           |
      | iPad Mini          | Global_Header_Component\\Global_Header_iPad_Mini          |
      | iPhone 12 Pro      | Global_Header_Component\\Global_Header_iPhone_12_Pro      |
      | Pixel 5            | Global_Header_Component\\Global_Header_Pixel_5            |
      | Samsung Galaxy S8+ | Global_Header_Component\\Global_Header_Samsung_Galaxy_S8+ |

  @Verify_Hamburger_button_on_Header_component_UI_in_mobile
  Scenario Outline: Verify Hamburger button on Header component UI in mobile
    Given user open "<Device>" device
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url in Mobile
    And user click the "Hamburger_Button" on the "Global_Header_Component" in Mobile
    Then user verify that "Hamburger_Hidden_Menu_Section" on the "Global_Header_Component" and "<Expected_Image>" image are same in Mobile
    And user close device

    Examples:
      | Device             | Expected_Image                                                    |
      | iPad Air           | Global_Header_Component\\Hamburger_Hidden_Menu_iPad_Air           |
      | iPad Mini          | Global_Header_Component\\Hamburger_Hidden_Menu_iPad_Mini          |
      | iPhone 12 Pro      | Global_Header_Component\\Hamburger_Hidden_Menu_iPhone_12_Pro      |
      | Pixel 5            | Global_Header_Component\\Hamburger_Hidden_Menu_Pixel_5            |
      | Samsung Galaxy S8+ | Global_Header_Component\\Hamburger_Hidden_Menu_Samsung_Galaxy_S8+ |


  @Multi_language_site_launch_in_mobile
  Scenario Outline: Multi language site launch in mobile
    Given user open "<Device>" device
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url in Mobile
    And user wait for 2 sec
    And user click the "Hamburger_Button" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify the text of "Language_Label_of_Hamburger_Section" on the "Global_Header_Component" is equal to "US Site" in Mobile
    And user click the "Site_Arrow_Icon_of_Hamburger_Section" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "US_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and "Global_Header_Component\\US_Site_Section_of_Site_Menu_Content_of_Hamburger" image are same in Mobile
    And user click the "International_EN_Site_Option_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user click the "Hamburger_Button" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify the text of "Language_Label_of_Hamburger_Section" on the "Global_Header_Component" is equal to "International EN Site" in Mobile
    And user click the "Site_Arrow_Icon_of_Hamburger_Section" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "International_EN_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and "Global_Header_Component\\International_EN_Site_Section_of_Site_Menu_Content_of_Hamburger" image are same in Mobile
    And user click the "International_DE_Site_Option_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user click the "Hamburger_Button" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify the text of "Language_Label_of_Hamburger_Section" on the "Global_Header_Component" is equal to "International DE Site" in Mobile
    And user click the "Site_Arrow_Icon_of_Hamburger_Section" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "International_DE_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and "Global_Header_Component\\International_DE_Site_Section_of_Site_Menu_Content_of_Hamburger" image are same in Mobile
    And user click the "International_NL_Site_Option_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user click the "Hamburger_Button" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify the text of "Language_Label_of_Hamburger_Section" on the "Global_Header_Component" is equal to "International NL Site" in Mobile
    And user click the "Site_Arrow_Icon_of_Hamburger_Section" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user take screen shot of "International_NL_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and save it as "International_NL_Site_Section_of_Site_Menu_Content_of_Hamburger" at "Global_Header_Component" in Mobile
    Then user verify that "International_NL_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and "Global_Header_Component\\International_NL_Site_Section_of_Site_Menu_Content_of_Hamburger" image are same in Mobile
    And user close device

    Examples:
      | Device             |
      | iPad Air           |
      | iPad Mini          |
      | iPhone 12 Pro      |
      | Pixel 5            |
      | Samsung Galaxy S8+ |


  @Multi_language_site_launch_in_mobile_M
  Scenario Outline: Multi language site launch in mobile
    Given user open "<Device>" device
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/global_header.html" url in Mobile
    And user wait for 2 sec
    And user click the "Hamburger_Button" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify the text of "Language_Label_of_Hamburger_Section" on the "Global_Header_Component" is equal to "US Site" in Mobile
    And user click the "Site_Arrow_Icon_of_Hamburger_Section" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user take screen shot of "US_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and save it as "US_Site_Section_of_Site_Menu_Content_of_Hamburger_Mobile" at "Global_Header_Component" in Mobile
#    Then user verify that "US_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and "Global_Header_Component\\US_Site_Section_of_Site_Menu_Content_of_Hamburger_Mobile" image are same in Mobile
    And user click the "International_EN_Site_Option_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user click the "Hamburger_Button" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify the text of "Language_Label_of_Hamburger_Section" on the "Global_Header_Component" is equal to "International EN Site" in Mobile
    And user click the "Site_Arrow_Icon_of_Hamburger_Section" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user take screen shot of "International_EN_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and save it as "International_EN_Site_Section_of_Site_Menu_Content_of_Hamburger_Mobile" at "Global_Header_Component" in Mobile
#    Then user verify that "International_EN_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and "Global_Header_Component\\International_EN_Site_Section_of_Site_Menu_Content_of_Hamburger_Mobile" image are same in Mobile
    And user click the "International_DE_Site_Option_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user click the "Hamburger_Button" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify the text of "Language_Label_of_Hamburger_Section" on the "Global_Header_Component" is equal to "International DE Site" in Mobile
    And user click the "Site_Arrow_Icon_of_Hamburger_Section" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user take screen shot of "International_DE_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and save it as "International_DE_Site_Section_of_Site_Menu_Content_of_Hamburger_Mobile" at "Global_Header_Component" in Mobile
    Then user verify that "International_DE_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and "Global_Header_Component\\International_DE_Site_Section_of_Site_Menu_Content_of_Hamburger_Mobile" image are same in Mobile
    And user click the "International_NL_Site_Option_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user click the "Hamburger_Button" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    Then user verify the text of "Language_Label_of_Hamburger_Section" on the "Global_Header_Component" is equal to "International NL Site" in Mobile
    And user click the "Site_Arrow_Icon_of_Hamburger_Section" on the "Global_Header_Component" in Mobile
    And user wait for 2 sec
    And user take screen shot of "International_NL_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and save it as "International_NL_Site_Section_of_Site_Menu_Content_of_Hamburger_Mobile" at "Global_Header_Component" in Mobile
    Then user verify that "International_NL_Site_Section_of_Site_Menu_Content_of_Hamburger" on the "Global_Header_Component" and "Global_Header_Component\\International_NL_Site_Section_of_Site_Menu_Content_of_Hamburger_Mobile" image are same in Mobile
    And user close device

    Examples:
      | Device             |
      | iPhone 12 Pro      |
      | Pixel 5            |
      | Samsung Galaxy S8+ |


