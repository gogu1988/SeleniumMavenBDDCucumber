@Horizontal_LinkList_Component @Sprint_5
Feature: Verify Horizontal Linklist functionality

  @Verify_Horizontal_link_list_is_as_per_approved_design_in_Desktop
  Scenario Outline: Verify Horizontal link list is as per approved design in Desktop
    Given user open "<Browser>" browser
    And user get "Horizontal_Link_List" url
    Then user verify that "HorizontalLinkList" on the "Horizontal_Link_List" and "<ExpectedImage>" image are same
    And user close browser
    Examples:
      | Browser | ExpectedImage                                |
      | Chrome  | LinkListComponent\\HorizontalLinklistChrome  |
      | Firefox | LinkListComponent\\HorizontalLinklistFirefox |
      | Edge    | LinkListComponent\\HorizontalLinklistEdge    |

  @Verify_Horizontal_link_list_is_as_per_approved_design_in_Mobile
  Scenario Outline: Verify Horizontal link list is as per approved design in Mobile
    Given user open "<Device>" device
    And user get "Horizontal_Link_List" url in Mobile
    And user scroll into view using java script for "News_Component" on the "Horizontal_Link_List" in Mobile
    And user wait for 3 sec
    And user take screen shot of "News_Component" on the "Horizontal_Link_List" and save it as "<ActualImage>" at "LinkListComponent" in Mobile
    Then user verify that "News_Component" on the "Horizontal_Link_List" and "<ExpectedImage>" image are same in Mobile
    And user close device
    Examples:
      | Device             | ExpectedImage                                        | ActualImage                       |
      | iPad Air           | LinkListComponent\\HorizontalLinklistIpadAir         | HorizontalLinklistIpadAir         |
      | iPad Mini          | LinkListComponent\\HorizontalLinklistIpadMini        | HorizontalLinklistIpadMini        |
      | iPhone 12 Pro      | LinkListComponent\\HorizontalLinklistIphone12Pro     | HorizontalLinklistIphone12Pro     |
      | Pixel 5            | LinkListComponent\\HorizontalLinklistPixel5          | HorizontalLinklistPixel5          |
      | Samsung Galaxy S8+ | LinkListComponent\\HorizontalLinklistSamsungGalaxyS8 | HorizontalLinklistSamsungGalaxyS8 |

  @Verify_Horizontal_link_list_component_opening_in_same_tab_when_user_click_any_link_in_Desktop
  Scenario Outline: Verify Horizontal link list component opening in same tab when user click any link in Desktop
    Given user open "<Browser>" browser
    And user get "Horizontal_Link_List" url
    And user click the "Disclosure_same1" on the "News_component"
    And user wait for 2 sec
    And user store number of tabs in the browser
    Then user verify that a new page opened in same tab with page title as "SamplePage"
    And user wait for 1 sec
    And user go to backward page
    And user click the "Glossary_same1" on the "News_component"
    And user wait for 3 sec
    Then user verify that a new page opened in same tab with page title as "YouTube"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_Horizontal_link_list_component_opening_in_New_tab_when_user_click_any_link_in_Desktop
  Scenario Outline: Verify Horizontal link list component opening in new tab when user click any link in Desktop
    Given user open "<Browser>" browser
    And user get "Horizontal_Link_List" url
    And user click the "<Links_In_Horizontal_Linklist>" on the "News_component"
    And user wait for 3 sec
    Then user verify that a new page opened in new tab with page title as "<Title>"
    And user close browser
    Examples:
      | Browser | Links_In_Horizontal_Linklist | Title      |
      | Chrome  | Funds_new1                   | Google     |
      | Firefox | Funds_new1                   | Google     |
      | Edge    | Funds_new1                   | Google     |
      | Chrome  | Perform_new1                 | SamplePage |
      | Firefox | Perform_new1                 | SamplePage |
      | Edge    | Perform_new1                 | SamplePage |

  @Verify_Horizontal_link_list_component_opening_in_same_tab_when_user_click_any_link_in_Mobile
  Scenario Outline: Verify Horizontal link list component opening in same tab when user click any link in Mobile
    Given user open "<Device>" device
    And user get "Horizontal_Link_List" url in Mobile
    And user click the "Disclosure_same1" on the "News_component" in Mobile
    And user wait for 2 sec
    And user store number of tabs in the browser in Mobile
    Then user verify that a new page opened in same tab with page title as "SamplePage" in Mobile
    And user wait for 1 sec
    And user go to backward page in Mobile
    And user click the "Glossary_same1" on the "News_component" in Mobile
    And user wait for 1 sec
    Then user verify that a new page opened in same tab with page title as "YouTube" in Mobile
    And user close device
    Examples:
      | Device             |
      | iPad Air           |
      | iPad Mini          |
      | iPhone 12 Pro      |
      | Pixel 5            |
      | Samsung Galaxy S8+ |

  @Verify_Horizontal_link_list_component_opening_in_New_tab_when_user_click_any_link_in_Mobile
  Scenario Outline: Verify Horizontal link list component opening in new tab when user click any link in Mobile
    Given user open "<Device>" device
    And user get "Horizontal_Link_List" url in Mobile
    And user click the "<Links_In_Horizontal_Linklist>" on the "News_component" in Mobile
    And user wait for 1 sec
    Then user verify that a new page opened in new tab with page title as "<Title>" in Mobile
    And user close device
    Examples:
      | Device             | Links_In_Horizontal_Linklist | Title      |
      | iPad Air           | Funds_new1                   | Google     |
      | iPad Mini          | Funds_new1                   | Google     |
      | iPhone 12 Pro      | Funds_new1                   | Google     |
      | Pixel 5            | Funds_new1                   | Google     |
      | Samsung Galaxy S8+ | Funds_new1                   | Google     |
      | iPad Air           | Perform_new1                 | SamplePage |
      | iPad Mini          | Perform_new1                 | SamplePage |
      | iPhone 12 Pro      | Perform_new1                 | SamplePage |
      | Pixel 5            | Perform_new1                 | SamplePage |
      | Samsung Galaxy S8+ | Perform_new1                 | SamplePage |

  @Verify_Horizontal_link_list_component_UI_when_hovor_in_Desktop
  Scenario Outline: Verify Horizontal link list component UI when hovor in Desktop
    Given user open "<Browser>" browser
    And user get "Horizontal_Link_List" url
    And user move the mouse to the "<LinksInLinklist>" on the "News_component"
    And user wait for 2 sec
    And user take screen shot of "HorizontalLinkList" on the "Horizontal_Link_List" and save it as "<Actual>" at "LinkListComponent"
    Then user verify that "HorizontalLinkList" on the "Horizontal_Link_List" and "<ExpectedImage>" image are same
    And user close browser
    Examples:
      | Browser | LinksInLinklist  | ExpectedImage                                      |
      | Chrome  | Disclosure_same1 | LinkListComponent//HorizontalLinkDisclosureChrome  |
      | Chrome  | Glossary_same1   | LinkListComponent//HorizontalLinkGlossaryChrome    |
      | Chrome  | Funds_new1       | LinkListComponent//HorizontalLinkFundChrome        |
      | Chrome  | Perform_new1     | LinkListComponent//HorizontalLinkPerformChrome     |
      | Edge    | Disclosure_same1 | LinkListComponent//HorizontalLinkDisclosureEdge    |
      | Edge    | Glossary_same1   | LinkListComponent//HorizontalLinkGlossaryEdge      |
      | Edge    | Funds_new1       | LinkListComponent//HorizontalLinkFundEdge          |
      | Edge    | Perform_new1     | LinkListComponent//HorizontalLinkPerformEdge       |
      | Firefox | Disclosure_same1 | LinkListComponent//HorizontalLinkDisclosureFirefox |
      | Firefox | Glossary_same1   | LinkListComponent//HorizontalLinkGlossaryFirefox   |
      | Firefox | Funds_new1       | LinkListComponent//HorizontalLinkFundFirefox       |
      | Firefox | Perform_new1     | LinkListComponent//HorizontalLinkPerformFirefox    |


  @Verify_Horizontal_link_list_component_UI_when_hovor_in_Mobile
  Scenario Outline: Verify Horizontal link list component UI when hovor in Mobile
    Given user open "<Device>" device
    And user get "Horizontal_Link_List" url in Mobile
    And user scroll into view using java script for "News_Component" on the "Horizontal_Link_List" in Mobile
    And user wait for 3 sec
    And user move the mouse to the "<LinksInLinklist>" on the "News_component" in Mobile
    And user wait for 2 sec
    Then user verify that "News_Component" on the "Horizontal_Link_List" and "<ExpectedImage>" image are same in Mobile
    And user close device
    Examples:
      | Device             | LinksInLinklist  | ExpectedImage                                                        |
      | iPad Air           | Disclosure_same1 | LinkListComponent//Horizontal_Link_list_Disclosure_Ipad_Air          |
      | iPad Mini          | Glossary_same1   | LinkListComponent//Horizontal_Link_list_Glossary_Ipad_Mini           |
      | iPhone 12 Pro      | Funds_new1       | LinkListComponent//Horizontal_Link_list_Funds_Iphone_12_Pro          |
      | Pixel 5            | Perform_new1     | LinkListComponent//Horizontal_Link_list_Perform_Pixel_5              |
      | Samsung Galaxy S8+ | Disclosure_same1 | LinkListComponent//Horizontal_Link_list_Disclosure_Samsong_Galaxy_S8 |