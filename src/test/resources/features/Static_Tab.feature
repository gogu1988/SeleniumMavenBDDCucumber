@Static_tab
Feature: Verify static tab functionality
  @tab001
  Scenario: Verify all the tabs should be clickable on window
    Given user open "Chrome" browser
    And user get "Static_Tab" url
    And user click the "Fund_Characteristics" on the "Static_Tab_Page"
    And user click the "Fund_Information" on the "Static_Tab_Page"
    And user click the "Sustainability" on the "Static_Tab_Page"
    And user click the "Quick_Stack" on the "Static_Tab_Page"
    And user click the "Objective&Strategy" on the "Static_Tab_Page"
    And user click the "Price&Performance" on the "Static_Tab_Page"
    And user click the "Asset_Mix" on the "Static_Tab_Page"
    And user click the "Resources" on the "Static_Tab_Page"

  @tab002
  Scenario Outline: Verify all the tabs should be clickable on mobile device
    Given user open "<Device>" device
    And user get "Static_Tab" url in Mobile
    And user click the "Static_Dropdown" on the "Static_Tab_Page" in Mobile
    And user click the "Fund_Characteristics" on the "Static_Tab_Page" in Mobile
    And user click the "Fund_Information" on the "Static_Tab_Page" in Mobile
    And user click the "Sustainability" on the "Static_Tab_Page" in Mobile
    And user click the "Quick_Stack" on the "Static_Tab_Page" in Mobile
    And user click the "Objective&Strategy" on the "Static_Tab_Page" in Mobile
    And user click the "Price&Performance" on the "Static_Tab_Page" in Mobile
    And user click the "Asset_Mix" on the "Static_Tab_Page" in Mobile
    And user click the "Resources" on the "Static_Tab_Page" in Mobile
    And user click the "Static_Dropdown" on the "Static_Tab_Page" in Mobile
    And user close device
    Examples:
      | Device             |
      | iPad Air           |
      | iPad Mini          |
    | iPhone 12 Pro      |
      | Pixel 5            |
     | Samsung Galaxy S8+ |

  @tab003
  Scenario Outline: Verify checkmark should display for selected tab
    Given user open "<Device>" device
    And user get "Static_Tab" url in Mobile
    And user click the "Static_Dropdown" on the "Static_Tab_Page" in Mobile
    And user wait for 2 sec
    And user click the "Fund_Characteristics" on the "Static_Tab_Page" in Mobile
    And user click the "Fund_Information" on the "Static_Tab_Page" in Mobile
    And user wait for 2 sec
    Then user take screen shot of "checkmark3" on the "Static_Tab_Page" and save it as "checkmark" at "Static_tab" in Mobile

    Then user verify that "checkmark2" on the "Static_Tab_Page" and "<Expected_Image>" image are same in Mobile

    Examples:
      | Device             |Expected_Image|
      | iPad Air           | Static_tab\\i pad air|
      | iPad Mini          |Static_tab\\i pad mini|
      | iPhone 12 Pro      |Static_tab\\i phone 12 pro|
      | Pixel 5            |Static_tab\\pixel 5|
      | Samsung Galaxy S8+ |Static_tab\\samsung galaxy S8+|
