@Vertical_LinkList_Component @Sprint_5
Feature: Verify Vertical Linklist functionality

  @Verify_link_list_in_footer_is_as_per_approved_design_in_Desktop
  Scenario Outline: Verify link list in footer is as per approved design in Desktop
    Given user open "<Browser>" browser
    And user get "Bookmark_Publish_URL" url
    And user wait for 3 sec
    Then user verify that "FooterVerticalLinklistComponentAndSocialFollowComponent" on the "LinkListComponent" and "<ExpectedImage>" image are same
    And user close browser
    Examples:
      | Browser | ExpectedImage                                       |
      | Chrome  | LinkListComponent\\FooterLinkListSocialShareChrome  |
      | Firefox | LinkListComponent\\FooterLinkListSocialShareFirefox |
      | Edge    | LinkListComponent\\FooterLinkListSocialShareEdge    |

  @Verify_link_list_in_footer_is_as_per_approved_design_in_Mobile
  Scenario Outline: Verify link list in footer is as per approved design in Mobile
    Given user open "<Device>" device
    And user get "Bookmark_Publish_URL" url in Mobile
    And user scroll into view using java script for "NorthernTrustText" on the "LinkListComponent" in Mobile
    And user wait for 3 sec
    Then user verify that "FooterVerticalLinklistComponentAndSocialFollowComponent" on the "LinkListComponent" and "<ExpectedImage>" image are same in Mobile
    And user close device
    Examples:
      | Device    | ExpectedImage                                        |
      | iPad Air  | LinkListComponent\\FooterLinkListSocialShareIpadAir  |
      | iPad Mini | LinkListComponent\\FooterLinkListSocialShareIpadMini |

  @Verify_link_list_in_footer_is_as_per_approved_design_in_Mobile
  Scenario Outline: Verify link list in footer is as per approved design in Mobile
    Given user open "<Device>" device
    And user get "Bookmark_Publish_URL" url in Mobile
    And user scroll into view using java script for "FooterVerticalLinklistComponentAndSocialFollowComponent" on the "LinkListComponent" in Mobile
    And user wait for 3 sec
    Then user verify that "FooterVerticalLinklistComponentAndSocialFollowComponent" on the "LinkListComponent" and "<ExpectedImage>" image are same in Mobile
    And user close device
    Examples:
      | Device             | ExpectedImage                                               |
      | iPhone 12 Pro      | LinkListComponent\\FooterLinkListSocialShareIphone12Pro     |
      | Pixel 5            | LinkListComponent\\FooterLinkListSocialSharePixel5          |
      | Samsung Galaxy S8+ | LinkListComponent\\FooterLinkListSocialShareSamsongGalaxyS8 |

  @Verify_link_list_component_when_user_click_any_link_in_Desktop
  Scenario Outline: Verify link list component when user click any link in Desktop
    Given user open "<Browser>" browser
    And user get "Bookmark_Publish_URL" url
    And user wait for 3 sec
    Then user click the "<linksInLinklist>" on the "LinkListComponent"
    And user wait for 3 sec
    And user verify that a new page opened in same tab with page title as "<TitleOfThePge>"
    And user close browser
    Examples:
      | Browser | linksInLinklist | TitleOfThePge                    |
      | Chrome  | FlexshareCares  | In Honor of Women Leading Change |
      | Firefox | Glossary        | Glossary                         |
      | Edge    | Press           | Press Room Media and News        |
      | Chrome  | CookiePolicy    | FlexShares Cookie Policy         |
      | Firefox | ProxyPolicy     | Proxy Policy                     |
      | Edge    | Disclaimers     | Disclaimers                      |

  @Verify_link_list_component_when_user_click_any_link_in_Mobile
  Scenario Outline: Verify link list component when user click any link in Mobile
    Given user open "<Device>" device
    And user get "Bookmark_Publish_URL" url in Mobile
    And user scroll into view using java script for "FlexshareCares" on the "LinkListComponent" in Mobile
    And user wait for 3 sec
    And user click the "<linksInLinklist>" on the "LinkListComponent" in Mobile
    Then user verify that a new page opened in same tab with page title as "<TitleOfThePge>" in Mobile
    And user close device

    Examples:
      | Device             | linksInLinklist | TitleOfThePge                    |
      | iPad Air           | FlexshareCares  | In Honor of Women Leading Change |
      | iPad Mini          | Glossary        | Glossary                         |
      | iPhone 12 Pro      | Press           | Press Room Media and News        |
      | Pixel 5            | CookiePolicy    | FlexShares Cookie Policy         |
      | Samsung Galaxy S8+ | ProxyPolicy     | Proxy Policy                     |

  @Verify_link_list_component_UI_when_hovor_in_Desktop
  Scenario Outline: Verify link list component UI when hovor in Desktop
    Given user open "<Browser>" browser
    And user get "Bookmark_Publish_URL" url
    And user scroll into view using java script for "<LinksInLinklist>" on the "LinkListComponent"
    And user move the mouse to the "<LinksInLinklist>" on the "LinkListComponent"
    And user wait for 2 sec
    Then user verify that "<LinksInLinklist>" on the "LinkListComponent" and "<ExpectedImage>" image are same
    And user close browser
    Examples:
      | Browser | LinksInLinklist             | ExpectedImage                                      |
      | Chrome  | AbountFlexShare             | LinkListComponent//aboutFlexshareLInk              |
      | Chrome  | FlexshareCares              | LinkListComponent//flexSharelink                   |
      | Chrome  | Glossary                    | LinkListComponent//glossaryLink                    |
      | Chrome  | Press                       | LinkListComponent//pressLink                       |
      | Chrome  | Propectus                   | LinkListComponent//propectusLink                   |
      | Chrome  | CookiePolicy                | LinkListComponent//cookiePolicyLink                |
      | Chrome  | ProxyPolicy                 | LinkListComponent//proxyPolicyLink                 |
      | Chrome  | Disclaimers                 | LinkListComponent//disclaimerLink                  |
      | Chrome  | PrivacyPolicy               | LinkListComponent//privacyPolicyLink               |
      | Chrome  | TaxAndLegalDocumentsArchive | LinkListComponent//taxAndLegalDocumentsArchiveLink |
      | Edge    | AbountFlexShare             | LinkListComponent//aboutFlexshareLInk              |
      | Edge    | FlexshareCares              | LinkListComponent//flexSharelink                   |
      | Edge    | Glossary                    | LinkListComponent//glossaryLink                    |
      | Edge    | Press                       | LinkListComponent//pressLink                       |
      | Edge    | Propectus                   | LinkListComponent//propectusLink                   |
      | Edge    | CookiePolicy                | LinkListComponent//cookiePolicyLink                |
      | Edge    | ProxyPolicy                 | LinkListComponent//proxyPolicyLink                 |
      | Edge    | Disclaimers                 | LinkListComponent//disclaimerLink                  |
      | Edge    | PrivacyPolicy               | LinkListComponent//privacyPolicyLink               |
      | Edge    | TaxAndLegalDocumentsArchive | LinkListComponent//taxAndLegalDocumentsArchiveLink |

  @Verify_link_list_component_UI_when_hovor_in_Firefox
  Scenario Outline: Verify link list component UI when hovor in Firefox
    Given user open "<Browser>" browser
    And user get "Bookmark_Publish_URL" url
    And user scroll into view using java script for "<LinksInLinklist>" on the "LinkListComponent"
    And user move the mouse to the "<LinksInLinklist>" on the "LinkListComponent"
    And user wait for 2 sec
    Then user verify that "<LinksInLinklist>" on the "LinkListComponent" and "<ExpectedImage>" image are same
    And user close browser
    Examples:
      | Browser | LinksInLinklist             | ExpectedImage                                             |
      | Firefox | AbountFlexShare             | LinkListComponent//aboutFlexshareLInkFirefox              |
      | Firefox | FlexshareCares              | LinkListComponent//flexSharelinkFirefox                   |
      | Firefox | Glossary                    | LinkListComponent//glossaryLinkFirefox                    |
      | Firefox | Press                       | LinkListComponent//pressLinkFirefox                       |
      | Firefox | Propectus                   | LinkListComponent//propectusLinkFirefox                   |
      | Firefox | CookiePolicy                | LinkListComponent//cookiePolicyLinkFirefox                |
      | Firefox | ProxyPolicy                 | LinkListComponent//proxyPolicyLinkFirefox                 |
      | Firefox | Disclaimers                 | LinkListComponent//disclaimerLinkFirefox                  |
      | Firefox | PrivacyPolicy               | LinkListComponent//privacyPolicyLinkFirefox               |
      | Firefox | TaxAndLegalDocumentsArchive | LinkListComponent//taxAndLegalDocumentsArchiveLinkFirefox |

  @Verify_link_list_component_UI_when_hovor_in_Mobile
  Scenario Outline: Verify link list component UI when hovor in Mobile
    Given user open "<Device>" device
    And user get "Bookmark_Publish_URL" url in Mobile
    And user scroll into view using java script for "<LinksInLinklist>" on the "LinkListComponent" in Mobile
    And user wait for 3 sec
    And user move the mouse to the "<LinksInLinklist>" on the "LinkListComponent" in Mobile
    And user wait for 2 sec
    And user verify that "<LinksInLinklist>" on the "LinkListComponent" and "<ExpectedImage>" image are same in Mobile
    And user close device
    Examples:
      | Device             | LinksInLinklist             | ExpectedImage                                                     |
      | iPad Air           | AbountFlexShare             | LinkListComponent//aboutFlexshareIpadAir                          |
      | iPad Mini          | FlexshareCares              | LinkListComponent//flexSharelinkIpadMini                          |
      | iPhone 12 Pro      | Glossary                    | LinkListComponent//glossaryLinkFirefoxIphone12Pro                 |
      | Pixel 5            | Press                       | LinkListComponent//PressLinkPixel5                                |
      | Samsung Galaxy S8+ | Propectus                   | LinkListComponent//PropectusLinkSamsongGalaxyS8                   |
      | iPad Air           | CookiePolicy                | LinkListComponent//CookiePolicyLinkIpadAir                        |
      | iPad Mini          | ProxyPolicy                 | LinkListComponent//ProxyPolicylinkIpadMini                        |
      | iPhone 12 Pro      | Disclaimers                 | LinkListComponent//DisclaimersLinkFirefoxIphone12Pro              |
      | Pixel 5            | PrivacyPolicy               | LinkListComponent//PrivacyPolicyLinkPixel5                        |
      | Samsung Galaxy S8+ | TaxAndLegalDocumentsArchive | LinkListComponent//TaxAndLegalDocumentsArchiveLinkSamsongGalaxyS8 |
