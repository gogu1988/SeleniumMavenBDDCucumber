@In_the_news @Sprint_5 @FSNT_88

Feature: Verify In the News component functionality

  @verify_in_the_news_component_variation_1
  Scenario Outline: Verify Variation 1 of In the News component
      #user clicks on the article title:
    Given user open "<Browser>" browser
    When user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/variation1.html" url
    And user wait for 1 sec
      #user click news article title:
    And user click the "News_title_link_var1" on the "News_component"
    And user wait for 1 sec
    Then user verify that a new page opened in same tab with page title as "SamplePage"
    And user go to backward page
    And user wait for 1 sec
      #user click news image:
    And user click the "News_image_link_1" on the "News_component"
    And user wait for 1 sec
    Then user verify that a new page opened in same tab with page title as "SamplePage"
    And user go to backward page
    And user wait for 1 sec
      #user click ETF trends link:
    And user click the "ETF_link_1" on the "News_component"
    And user wait for 1 sec
    # user verify "You are leaving from Flexshares" message is displayed on the Alert
    And user get Text of "Leaving_text_1" on "News_component"
    And user click the "Take_me_there_1" on the "News_component"
    And user get "https://www.google.com/" url
    Then user verify that a new page opened in same tab with page title as "Google"
    And user go to backward page
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_news_block_link_sametab_behaviour
  Scenario Outline: verify same tab behaviour in variation1
    Given user open "<Browser>" browser
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/variation1.html?skipcache=true" url
    And user click the "Disclosure_same1" on the "News_component"
    And user wait for 1 sec
    Then user verify that a new page opened in same tab with page title as "SamplePage"
    And user wait for 1 sec
    And user go to backward page
    And user click the "Glossary_same1" on the "News_component"
    And user wait for 1 sec
    Then user verify that a new page opened in same tab with page title as "YouTube"
    And user go to backward page
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_news_block_link_Newtab_External_link
  Scenario Outline: Verify new tab behaviour of external link
    Given user open "<Browser>" browser
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/variation1.html?skipcache=true" url
    And user click the "Funds_new1" on the "News_component"
    And user wait for 1 sec
    Then user verify that a new page opened in new tab with page title as "Google"
    And user wait for 1 sec
    And user switch to window with the title as "NEWS COMPONENT"
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_news_block_link_Newtab_Internal_link
  Scenario Outline: Verify New tab behaviour of internal link
    Given user open "<Browser>" browser
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/variation1.html?skipcache=true" url
    And user click the "Perform_new1" on the "News_component"
    And user wait for 4 sec
    Then user verify that a new page opened in new tab with page title as "SamplePage"
    And user wait for 1 sec
    And user switch to window with the title as "NEWS COMPONENT"
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |


  @Verify_ETF_trends_underline_before_graphics
  Scenario Outline: Verify underline graphics of ETF Trends before
    Given user open "<Browser>" browser
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/variation1.html?skipcache=true" url
    And user wait for 1 sec
    Then user verify that "ETF_link" on the "News_component" and "<Expected_Image>" image are same
    And user close browser

    Examples:
      | Browser | Expected_Image                         |
      | Chrome  | News_component_pic\\ETF_google_before  |
      | Firefox | News_component_pic\\ETF_Firefox_before |
      | Edge    | News_component_pic\\ETF_edge_before    |

  @verify_ETF_trends_underline_after_graphics
  Scenario Outline: Verify underline graphics of ETF Trends after
    Given user open "<Browser>" browser
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/variation1.html?skipcache=true" url
    And user move the mouse to the "ETF_link_1" on the "News_component"
    And user wait for 1 sec
    Then user verify that "ETF_link_1" on the "News_component" and "<Expected_Image>" image are same
    And user close browser

    Examples:
      | Browser | Expected_Image                               |
      | Chrome  | News_component_pic\\ETF_google_after_actual  |
      | Firefox | News_component_pic\\ETF_Firefox_after_actual |
      | Edge    | News_component_pic\\ETF_edge_after_actual    |


  @verify_News_component_UI_image_on_desktop_variation_1
  Scenario Outline: Verify News component UI wit image on Desktop Variation 1
    Given user open "<Browser>" browser
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/variation1.html?skipcache=true" url
    And user wait for 1 sec
    Then user verify that "News_block_var1" on the "News_component" and "<Expected_Image>" image are same
    And user close browser
    Examples:
      | Browser | Expected_Image                            |
      | Chrome  | News_component_pic\\Vari1_chrome_desktop  |
      | Firefox | News_component_pic\\Vari1_Firefox_desktop |
      | Edge    | News_component_pic\\Vari1_Edge_desktop    |

  @verify_News_component_UI_image_on_desktop_variation_2
  Scenario Outline: Verify News component UI wit image on Desktop Variation 2
    Given user open "<Browser>" browser
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/news_variation2.html?skipcache=true" url
    Then user verify that "News_block_var2" on the "News_component" and "<Expected_Image>" image are same
    And user close browser
    Examples:
      | Browser | Expected_Image                            |
      | Chrome  | News_component_pic\\Vari2_chrome_desktop  |
      | Firefox | News_component_pic\\Vari2_Firefox_desktop |
      | Edge    | News_component_pic\\Vari2_Edge_desktop    |

  @verify_News_component_UI_image_on_desktop_variation_3
  Scenario Outline: Verify News component UI wit image on Desktop Variation 3
    Given user open "<Browser>" browser
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/news_variation3.html" url
    Then user verify that "News_block_var3" on the "News_component" and "<Expected_Image>" image are same
    And user close browser
    Examples:
      | Browser | Expected_Image                            |
      | Chrome  | News_component_pic\\Vari3_chrome_desktop  |
      | Firefox | News_component_pic\\Vari3_firefox_desktop |
      | Edge    | News_component_pic\\Vari3_edge_desktop    |

  @Verify_News_component_UI_with_image_on_all_mobile_devices_variation1
  Scenario Outline: Verify News component UI with image on all devices variation 1
    Given user open "<Device>" device
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/variation1.html?skipcache=true" url in Mobile
    And user wait for 1 sec
    Then user verify that "News_block_var1" on the "News_component" and "<Expected_Image>" image are same in Mobile
    And user close device

    Examples:
      | Device             | Expected_Image                         |
      | iPad Air           | News_component_pic\\News_var1_iPadAir  |
      | iPad Mini          | News_component_pic\\News_var1_iPadMini |
      | iPhone 12 Pro      | News_component_pic\\News_var1_iPhone   |
      | Pixel 5            | News_component_pic\\News_var1_Pixel5   |
      | Samsung Galaxy S8+ | News_component_pic\\News_var1_Samsung  |

  @Verify_news_component_UI_with_image_on_all_mobile_devices_variation2
  Scenario Outline: Verify News component UI with image on all devices variation 2
    Given user open "<Device>" device
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/news_variation2.html?skipcache=true" url in Mobile
    And user wait for 1 sec
    Then user verify that "News_block_var2" on the "News_component" and "<Expected_Image>" image are same in Mobile
    And user close device

    Examples:
      | Device             | Expected_Image                                |
      | iPad Air           | News_component_pic\\News_var2_ipadAir_actual  |
      | iPad Mini          | News_component_pic\\News_var2_ipadMini_actual |
      | iPhone 12 Pro      | News_component_pic\\News_var2_iphone12_actual |
      | Pixel 5            | News_component_pic\\News_var2_pixel_actual    |
      | Samsung Galaxy S8+ | News_component_pic\\News_var2_samsung_actual  |

  @Verify_news_component_UI_with_image_on_all_mobile_devices_variation3
  Scenario Outline: Verify News component UI with image on all devices variation 3
    Given user open "<Device>" device
    And user get "https://publish-p73553-e644953.adobeaemcloud.com/content/ntflexshares/us/en/advisors/automation/newcomponent/news_variation3.html?skipcache=true" url in Mobile
    And user wait for 2 sec
    Then user verify that "News_block_var3" on the "News_component" and "<Expected_Image>" image are same in Mobile
    And user close device

    Examples:
      | Device             | Expected_Image                         |
      | iPad Air           | News_component_pic\\News_var3_iPadAir  |
      | iPad Mini          | News_component_pic\\News_var3_iPadMini |
      | iPhone 12 Pro      | News_component_pic\\News_var3_iPhone   |
      | Pixel 5            | News_component_pic\\News_var3_pixel5   |
      | Samsung Galaxy S8+ | News_component_pic\\News_var3_Samsung  |









      





      

     

     