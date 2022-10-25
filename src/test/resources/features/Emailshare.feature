@Email_share @sprint_6 @FSNT_350
Feature: To verify the Email_share component

  @Verify_the_Email_share_icon_feature_in_Windows_Machine
  Scenario Outline: Verify the email share feature in Windows Machine
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/emailshare.html?skipcache=true" url
    And user wait for 2 sec
    And user click the "Email_Icon_Button" on the "Emailshare_Component"
    And user take screen shot as "Email_share_result"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |

  @Verify_the_Email_share_text_feature_in_Windows_Machine
  Scenario Outline: Verify the email text share feature in Windows Machine
    Given user open "<Browser>" browser
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/emailshare.html?skipcache=true" url
    And user wait for 2 sec
    And user click the "Email_text_Button" on the "Emailshare_Component"
    And user take screen shot as "Email_share_result"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |


  @Verify_the_Email_share_feature_in_Mobile
  Scenario Outline: Verify the Email share feature in Mobile
    Given user open "<Device>" device
    And user get "http://inblrsclfsnt001.global.publicisgroupe.net/us/en/advisors/automation/emailshare.html?skipcache=true" url in Mobile
    And user wait for 5 sec
    Then user click the "Email_Icon_Button" on the "Emailshare_Component" in Mobile
    And user close device
    Examples:
      | Device             |
      | iPad Air           |
      | iPad Mini          |
      | iPhone 12 Pro      |
      | Pixel 5            |
      | Samsung Galaxy S8+ |





