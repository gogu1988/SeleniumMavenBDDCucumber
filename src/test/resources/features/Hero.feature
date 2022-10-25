@Hero @Sprint_5
Feature: Verify Hero component feature

  @Verify_clickable_elements_in_Hero_component
  Scenario Outline: Verify clickable elements in Hero component
    Given user open "<Browser>" browser
    And user get "Hero_Component_URL" url
    And user click the "Main_Hero_Image" on the "Hero_Component"
    And user wait for 2 sec
    Then user verify that a new page opened in new tab with page title as "Google"
    And user switch to window with the title as "Hero"
    And user click the "Sub_1_Hero_Image" on the "Hero_Component"
    And user wait for 2 sec
    Then user verify that a new page opened in new tab with page title as "Google"
    And user switch to window with the title as "Hero"
    And user click the "Sub_2_Hero_Image" on the "Hero_Component"
    And user wait for 8 sec
    Then user verify that a new page opened in new tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home"
    And user switch to window with the title as "Hero"
    And user click the "Sub_3_Hero_Image" on the "Hero_Component"
    And user wait for 8 sec
    Then user verify that a new page opened in new tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home"
    And user switch to window with the title as "Hero"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_clickable_elements_in_Hero_component_in_Mobile
  Scenario Outline: Verify clickable elements in Hero component in Mobile
    Given user open "<Device>" device
    And user get "Hero_Component_URL" url in Mobile
    And user click the "Main_Hero_Image" on the "Hero_Component" in Mobile
    And user wait for 2 sec
    Then user verify that a new page opened in new tab with page title as "Google" in Mobile
    And user switch to window with the title as "Hero" in Mobile
    And user click the "Sub_1_Hero_Image" on the "Hero_Component" in Mobile
    And user wait for 2 sec
    Then user verify that a new page opened in new tab with page title as "Google" in Mobile
    And user switch to window with the title as "Hero" in Mobile
    Then user scroll into view using java script for "Sub_2_Hero_Image" on the "Hero_Component" in Mobile
    And user wait for 2 sec
    And user click the "Sub_2_Hero_Image" on the "Hero_Component" in Mobile
    And user wait for 8 sec
    Then user verify that a new page opened in new tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home" in Mobile
    And user switch to window with the title as "Hero" in Mobile
    Then user scroll into view using java script for "Sub_3_Hero_Image" on the "Hero_Component" in Mobile
    And user wait for 2 sec
    And user click the "Sub_3_Hero_Image" on the "Hero_Component" in Mobile
    And user wait for 8 sec
    Then user verify that a new page opened in new tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home" in Mobile
    And user switch to window with the title as "Hero" in Mobile
    And user close device
    Examples:
      | Device             |
      | iPad Air           |
      | iPad Mini          |
      | iPhone 12 Pro      |
      | Pixel 5            |
      | Samsung Galaxy S8+ |

  @Verify_UI_of_Hero_component
  Scenario Outline: Verify UI of Hero component
    Given user open "<Browser>" browser
    And user get "Hero_Component_URL" url
    Then user verify that "Hero_Section" on the "Hero_Component" and "Hero\\Hero_section" image are same
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Edge    |

  @Verify_UI_of_Hero_component
  Scenario Outline: Verify UI of Hero component
    Given user open "<Browser>" browser
    And user get "Hero_Component_URL" url
    Then user verify that "Hero_Section" on the "Hero_Component" and "Hero\\Hero_section_Firefox" image are same
    And user close browser

    Examples:
      | Browser |
      | Firefox |

  @Verify_UI_of_Hero_component_in_Mobile
  Scenario Outline: Verify UI of Hero component in Mobile
    Given user open "<Device>" device
    And user get "Hero_Component_URL" url in Mobile
    Then user verify that "Hero_Section" on the "Hero_Component" and "<Expected_Hero_section_Image>" image are same in Mobile
    And user close device

    Examples:
      | Device             | Expected_Hero_section_Image           |
      | iPad Air           | Hero\\iPad_Hero_section               |
      | iPad Mini          | Hero\\iPad_Mini_Hero_section          |
      | iPhone 12 Pro      | Hero\\iPhone_12_Hero_section          |
      | Pixel 5            | Hero\\Pixel_5_Hero_section            |
      | Samsung Galaxy S8+ | Hero\\Samsung_Galaxy_S8+_Hero_section |

  @Verify_clickable_elements_in_Hero_component_variation_2
  Scenario Outline: Verify clickable elements in Hero component variation 2
    Given user open "<Browser>" browser
    And user get "Hero_Variation_2_URL" url
    And user click the "Sub_1_Hero_V2_Image" on the "Hero_Component"
    And user wait for 8 sec
    Then user verify that a new page opened in new tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home"
    And user switch to window with the title as "Hero component variation 2"
    And user click the "Sub_2_Hero_V2_Image" on the "Hero_Component"
    And user wait for 2 sec
    Then user verify that a new page opened in new tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home"
    And user switch to window with the title as "Hero component variation 2"
    And user store number of tabs in the browser
    And user click the "Sub_3_Hero_V2_Image" on the "Hero_Component"
    And user wait for 8 sec
    Then user verify that a new page opened in same tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_clickable_elements_in_Hero_component_variation_2_in_Mobile
  Scenario Outline: Verify clickable elements in Hero component variation 2 in Mobile
    Given user open "<Device>" device
    And user get "Hero_Variation_2_URL" url in Mobile
    And user click the "Sub_1_Hero_V2_Image" on the "Hero_Component" in Mobile
    And user wait for 8 sec
    Then user verify that a new page opened in new tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home" in Mobile
    And user switch to window with the title as "Hero component variation 2" in Mobile
    And user scroll into view using java script for "Sub_2_Hero_V2_Image" on the "Hero_Component" in Mobile
    And user wait for 3 sec
    And user click the "Sub_2_Hero_V2_Image" on the "Hero_Component" in Mobile
    And user wait for 2 sec
    Then user verify that a new page opened in new tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home" in Mobile
    And user switch to window with the title as "Hero component variation 2" in Mobile
    And user store number of tabs in the browser in Mobile
    And user scroll into view using java script for "Sub_3_Hero_V2_Image" on the "Hero_Component" in Mobile
    And user wait for 3 sec
    And user click the "Sub_3_Hero_V2_Image" on the "Hero_Component" in Mobile
    And user wait for 8 sec
    Then user verify that a new page opened in same tab with page title as "FlexShares Exchange Traded Funds (ETFs) | Home" in Mobile
    And user close device
    Examples:
      | Device             |
      | iPad Air           |
      | iPad Mini          |
      | iPhone 12 Pro      |
      | Pixel 5            |
      | Samsung Galaxy S8+ |

  @Verify_UI_of_Hero_component_variation_2
  Scenario Outline: Verify UI of Hero component variation 2
    Given user open "<Browser>" browser
    And user get "Hero_Variation_2_URL" url
    And user wait for 2 sec
    Then user verify that "Hero_V2_Section" on the "Hero_Component" and "Hero\\Hero_V2_Section" image are same
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Edge    |

  @Verify_UI_of_Hero_component_variation_2
  Scenario Outline: Verify UI of Hero component variation 2
    Given user open "<Browser>" browser
    And user get "Hero_Variation_2_URL" url
    And user wait for 2 sec
    Then user verify that "Hero_V2_Section" on the "Hero_Component" and "Hero\\Hero_V2_Section_Firefox" image are same
    And user close browser

    Examples:
      | Browser |
      | Firefox |

  @Verify_UI_of_Hero_component_variation_2_in_Mobile
  Scenario Outline: Verify UI of Hero component variation 2 in Mobile
    Given user open "<Device>" device
    And user get "Hero_Variation_2_URL" url in Mobile
    And user wait for 3 sec
    Then user verify that "Hero_V2_Section" on the "Hero_Component" and "<Expected_Hero_section_Image>" image are same in Mobile
    And user close device

    Examples:
      | Device             | Expected_Hero_section_Image              |
      | iPad Air           | Hero\\iPad_Hero_V2_section               |
      | iPad Mini          | Hero\\iPad_Mini_Hero_V2_section          |
      | iPhone 12 Pro      | Hero\\iPhone_12_Hero_V2_section          |
      | Pixel 5            | Hero\\Pixel_5_Hero_V2_section            |
      | Samsung Galaxy S8+ | Hero\\Samsung_Galaxy_S8+_Hero_V2_section |
