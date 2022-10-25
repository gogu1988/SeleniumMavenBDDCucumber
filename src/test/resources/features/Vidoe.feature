@Video @Sprint_5
Feature: Verify video component feature


  @Verify_video_UI_play_and_pause
  Scenario Outline: Verify video UI play and pause
    Given user open "<Browser>" browser
    And user get "Video_URL" url
    And user wait for 3 sec
    Then user verify that "Video" on the "Video_Component" and "Video\\Video_Start" image are same
    And user move the mouse to the "Video" on the "Video_Component"
    And user wait for 2 sec
    Then user verify that "Video" on the "Video_Component" and "Video\\Video_Mouse_Hover" image are same
    And user click the "Video_section" on the "Video_Component"
    And user wait for 5 sec
    And user click the "Video_section" on the "Video_Component"
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Edge    |


  @Verify_video_UI_play_and_pause
  Scenario Outline: Verify video UI play and pause
    Given user open "<Browser>" browser
    And user get "Video_URL" url
    And user wait for 3 sec
    And user take screen shot of "Video" on the "Video_Component" and save it as "Video_Start_Firefox" at "Video"
    And user move the mouse to the "Video" on the "Video_Component"
    And user wait for 2 sec
    And user take screen shot of "Video" on the "Video_Component" and save it as "Video_Mouse_Hover_Firefox" at "Video"
    And user click the "Video_section" on the "Video_Component"
    And user wait for 5 sec
    And user click the "Video_section" on the "Video_Component"
    And user close browser

    Examples:
      | Browser |
      | Firefox |


  @Verify_video_Link_Text_Functionality_and_UI
  Scenario Outline: Verify video Link Text Functionality and UI
    Given user open "<Browser>" browser
    And user get "Video_URL" url
    And user wait for 3 sec
    Then user verify that "Video_Text_Section" on the "Video_Component" and "<Expected_Video_Text_Section_Before_Image>" image are same
    And user move the mouse to the "Link_Text_1" on the "Video_Component"
    And user wait for 3 sec
    Then user verify that "Video_Text_Section" on the "Video_Component" and "<Expected_Video_Text_Section_After_Image>" image are same
    And user scroll into view using java script for "Link_Text_2" on the "Video_Component"
    And user wait for 3 sec
    And user click the "Link_Text_2" on the "Video_Component"
    Then user verify that a new page opened in same tab with page title as "Amazon.com. Spend less. Smile more."
    And user go to backward page
    And user scroll into view using java script for "Link_Text_3" on the "Video_Component"
    And user click the "Link_Text_3" on the "Video_Component"
    Then user verify that a new page opened in new tab with page title as "Amazon.com. Spend less. Smile more."
    And user close browser

    Examples:
      | Browser | Expected_Video_Text_Section_Before_Image | Expected_Video_Text_Section_After_Image |
      | Chrome  | Video\\Video_Text_Section_Before         | Video\\Video_Text_Section_After         |
      | Firefox | Video\\Video_Text_Section_Before_Firefox | Video\\Video_Text_Section_After_Firefox |
      | Edge    | Video\\Video_Text_Section_Before_Edge    | Video\\Video_Text_Section_After_Edge    |


  @Verify_video_UI_play_and_pause_in_Mobile
  Scenario Outline: Verify video UI play and pause in Mobile
    Given user open "<Device>" device
    And user get "Video_URL" url in Mobile
    And user wait for 3 sec
    Then user verify that "Video" on the "Video_Component" and "<Expected_Video_Start_Image>" image are same in Mobile
    And user move the mouse to the "Video" on the "Video_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Video" on the "Video_Component" and "<Expected_Video_Mouse_Hover_Image>" image are same in Mobile
    And user click the "Video_section" on the "Video_Component" in Mobile
    And user wait for 5 sec
    And user click the "Video_section" on the "Video_Component" in Mobile
    And user close device

    Examples:
      | Device             | Expected_Video_Start_Image            | Expected_Video_Mouse_Hover_Image            |
      | iPad Air           | Video\\iPad_Air_Video_Start           | Video\\iPad_Air_Video_Mouse_Hover           |
      | iPad Mini          | Video\\iPad_Mini_Video_Start          | Video\\iPad_Mini_Video_Mouse_Hover          |
      | iPhone 12 Pro      | Video\\iPhone_12_Pro_Video_Start      | Video\\iPhone_12_Pro_Video_Mouse_Hover      |
      | Pixel 5            | Video\\Pixel_5_Video_Start            | Video\\Pixel_5_Video_Mouse_Hover            |
      | Samsung Galaxy S8+ | Video\\Samsung_Galaxy_S8+_Video_Start | Video\\Samsung_Galaxy_S8+_Video_Mouse_Hover |

  @Verify_video_Link_Text_Functionality_and_UI_in_Mobile
  Scenario Outline: Verify video Link Text Functionality and UI in Mobile
    Given user open "<Device>" device
    And user get "Video_URL" url in Mobile
    And user wait for 3 sec
    Then user verify that "Video_Text_Section" on the "Video_Component" and "<Expected_Video_Text_Section_Before_Image>" image are same in Mobile
    And user move the mouse to the "Link_Text_1" on the "Video_Component" in Mobile
    And user wait for 3 sec
    Then user verify that "Video_Text_Section" on the "Video_Component" and "<Expected_Video_Text_Section_After_Image>" image are same in Mobile
    And user scroll into view using java script for "Link_Text_2" on the "Video_Component" in Mobile
    And user wait for 3 sec
    And user click the "Link_Text_2" on the "Video_Component" in Mobile
    Then user verify that a new page opened in same tab with page title as "Amazon.com. Spend less. Smile more." in Mobile
    And user go to backward page in Mobile
    And user scroll into view using java script for "Link_Text_3" on the "Video_Component"
    And user click the "Link_Text_3" on the "Video_Component"
    Then user verify that a new page opened in new tab with page title as "Amazon.com. Spend less. Smile more." in Mobile
    And user close browser

    Examples:
      | Device             | Expected_Video_Text_Section_Before_Image            | Expected_Video_Text_Section_After_Image            |
      | iPad Air           | Video\\iPad_Air_Video_Text_Section_Before           | Video\\iPad_Air_Video_Text_Section_After           |
      | iPad Mini          | Video\\iPad_Mini_Video_Text_Section_Before          | Video\\iPad_Mini_Video_Text_Section_After          |
      | iPhone 12 Pro      | Video\\iPhone_12_Pro_Video_Text_Section_Before      | Video\\iPhone_12_Pro_Video_Text_Section_After      |
      | Pixel 5            | Video\\Pixel_5_Video_Text_Section_Before            | Video\\Pixel_5_Video_Text_Section_After            |
      | Samsung Galaxy S8+ | Video\\Samsung_Galaxy_S8+_Video_Text_Section_Before | Video\\Samsung_Galaxy_S8+_Video_Text_Section_After |