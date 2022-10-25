@Social_Follow_Component @Sprint_6 @FSNT85
Feature: Verify Socail Follow Component functionality

  @SocialFollowTestCase2DesktopView
  Scenario Outline: Verify that for desktop the site will open in new tab if user click social follow component
    Given user open "<Browser>" browser
    And user get "Bookmark_Publish_URL" url
    Then user click the "youtubeSocialShareComponent" on the "SocialFollowComponentPage"
    And user wait for 3 sec
    And user verify that a new page opened in new tab with page title as "YouTube"
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
      | Firefox |
      | Edge    |


  @SocialFollowTestCase2MobileView
  Scenario Outline: Verify that for all mobile devices the site will open in new tab if user click social follow component
    Given user open "<Device>" device
    And user get "Bookmark_Publish_URL" url in Mobile
    And user scroll into view using java script for "LinkedInSocialShareComponent" on the "SocialFollowComponentPage" in Mobile
    And user wait for 3 sec
    And user click the "LinkedInSocialShareComponent" on the "SocialFollowComponentPage" in Mobile
    And user wait for 3 sec
    Then user verify that a new page opened in new tab with page title as "LinkedIn: Log In or Sign Up" in Mobile
    And user close device
    Examples:
      | Device             |
      | iPad Air           |
      | iPad Mini          |
      | iPhone 12 Pro      |
      | Pixel 5            |
      | Samsung Galaxy S8+ |