@Email_Subscribe @Sprint_5
Feature: Verify Email Subscribe functionality

  @Verify_Email_Subscribe_functionality_with_New_Tab_Internal_Link
  Scenario Outline: Verify Email Subscribe functionality with New Tab Internal Link
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/email-subscribe/email-subscribe-2.html" url
    And user click the "Email_Subscribe_Button" on the "Component_Page"
    And user wait for 2 sec
    Then user verify that a new page opened in new tab with page title as "Bookmark"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_Email_Subscribe_functionality_with_New_Tab_External_Link
  Scenario Outline: Verify Email Subscribe functionality with New Tab External Link
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/email-subscribe/email-subscribe-component1.html" url
    And user click the "Email_Subscribe_Button" on the "Component_Page"
    And user wait for 2 sec
    Then user verify that a new page opened in new tab with page title as "YouTube"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_Email_Subscribe_functionality_with_Same_Tab_Internal_Link
  Scenario Outline: Verify Email Subscribe functionality with New Tab Internal Link
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/email-subscribe/email-subscribe-component.html" url
    And user click the "Email_Subscribe_Button" on the "Component_Page"
    And user wait for 2 sec
    Then user verify that a new page opened in same tab with page title as "Bookmark"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_Email_Subscribe_functionality_with_Same_Tab_External_Link
  Scenario Outline: Verify Email Subscribe functionality with New Tab External Link
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/email-subscribe/Image-Same-Tab.html" url
    And user click the "Email_Subscribe_Button" on the "Component_Page"
    And user wait for 2 sec
    Then user verify that a new page opened in same tab with page title as "YouTube"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_Email_Subscribe_UI_with_gray_background_on_all_devices
  Scenario Outline: Verify Email Subscribe UI with gray background on all devices
    Given user open "<Device>" device
    And user get "Email_share_Gray_Same_Tab_Internal_Link_url" url in Mobile
    Then user verify that "Email_Subscribe_Section" on the "Component_Page" and "<Expected_Image>" image are same in Mobile
    And user close device
    Examples:
      | Device             | Expected_Image                           |
      | iPad Air           | Email_Subscribe_Gray\\iPad_Air           |
      | iPad Mini          | Email_Subscribe_Gray\\iPad_Mini          |
      | iPhone 12 Pro      | Email_Subscribe_Gray\\iPhone_12_Pro      |
      | Pixel 5            | Email_Subscribe_Gray\\Pixel_5            |
      | Samsung Galaxy S8+ | Email_Subscribe_Gray\\Samsung_Galaxy_S8+ |

  @Verify_Email_Subscribe_UI_with_image_background_on_all_devices
  Scenario Outline: Verify Email Subscribe UI with image background on all devices
    Given user open "<Device>" device
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/email-subscribe/image_background.html" url in Mobile
    Then user verify that "Email_Subscribe_Section" on the "Component_Page" and "<Expected_Image>" image are same in Mobile
    And user close device
    Examples:
      | Device             | Expected_Image                            |
      | iPad Air           | Email_Subscribe_Image\\iPad_Air           |
      | iPad Mini          | Email_Subscribe_Image\\iPad_Mini          |
      | iPhone 12 Pro      | Email_Subscribe_Image\\iPhone_12_Pro      |
      | Pixel 5            | Email_Subscribe_Image\\Pixel_5            |
      | Samsung Galaxy S8+ | Email_Subscribe_Image\\Samsung_Galaxy_S8+ |