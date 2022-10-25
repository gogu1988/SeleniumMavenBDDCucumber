@Bookmark @Sprint_5
Feature: Verify Bookmark functionality

  @Verify_the_Bookmark_feature_in_Windows_Machine_1
  Scenario Outline: Verify the Bookmark feature in Windows Machine
    Given user open "<Browser>" browser
    And user get "Bookmark_Publish_URL" url
#    Then user verify that "Bookmark_Button" on the "Component_Page" and "Bookmark\\Bookmark_Button" image are same
    And user click the "Bookmark_Button" on the "Component_Page"
    Then user verify "Press CTRL+ to Bookmark this page" message is displayed on the Alert
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_the_Bookmark_feature_in_Windows_Machine
  Scenario Outline: Verify the Bookmark feature in Windows Machine
    Given user open "<Browser>" browser
    And user get "https://www.google.com" url
    Then user take screen shot as "google"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Chrome  |
      | Chrome  |
      | Chrome  |
      | Chrome  |



  @Verify_the_Bookmark_feature_in_Windows_Machine_1
  Scenario Outline: Verify the Bookmark feature in Windows Machine_1
    Given user open "<Browser>" browser
    And user get "Bookmark_Publish_URL" url
#    Then user verify that "Bookmark_Button" on the "Component_Page" and "Bookmark\\Bookmark_Button" image are same
    And user click the "Bookmark_Button" on the "Component_Page"
    Then user verify "Press CTRL+D to Bookmark this page" message is displayed on the Alert
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |


  @Verify_the_Bookmark_feature_in_Mobile
  Scenario Outline: Verify the Bookmark feature in Mobile
    Given user open "<Device>" device
    And user get "Bookmark_Publish_URL" url in Mobile
    Then user verify "Bookmark_Button" is invisible on the "Component_Page" in Mobile
    And user close device
    Examples:
      | Device             |
      | iPad Air           |
      | iPad Mini          |
      | iPhone 12 Pro      |
      | Pixel 5            |
      | Samsung Galaxy S8+ |


  @Chrome_Headless
  Scenario Outline: Verify the Bookmark feature in Windows Machine
    Given user open "<Browser>" browser
    And user get "Bookmark_Publish_URL" url
#    Then user take screen shot of "Bookmark_Button" on the "Component_Page" and save it as "Bookmark_Button_Linux" at "Bookmark"
    Then user verify that "Bookmark_Button" on the "Component_Page" and "Bookmark/Bookmark_Button_Linux" image are same
    And user click the "Bookmark_Button" on the "Component_Page"
#    Then user verify "Press CTRL+D to Bookmark this page" message is displayed on the Alert
    And user close browser
    Examples:
      | Browser         |
      | Chrome_Headless |

