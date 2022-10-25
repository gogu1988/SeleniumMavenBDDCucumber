@Social_Share_Component @Sprint_5 @FSNT314
Feature: Verify Social Follow Component functionality

  @Verify_the_social_share_icon_is_as_per_required_design_in_Desktop
  Scenario Outline: Verify the social share icon is as per required design in Desktop
    Given user open "<Browser>" browser
    And user get "SocialShare_Publish_URL" url
    And user verify that "<SocialShareComponentICon>" on the "SocialFollowComponentPage" and "<ExpectedImage>" image are same
    And user close browser
    Examples:
      | Browser | SocialShareComponentICon | ExpectedImage                             |
      | Chrome  | FacebookSocialShareIcon  | SocialShareComponent//FacebookIcon        |
      | Firefox | FacebookSocialShareIcon  | SocialShareComponent//FacebookIconFirefox |
      | Edge    | FacebookSocialShareIcon  | SocialShareComponent//FacebookIcon        |
      | Chrome  | LinkedInSocialShareIcon  | SocialShareComponent//LinkedInICon        |
      | Firefox | LinkedInSocialShareIcon  | SocialShareComponent//LinkedInIConFirefox |
      | Edge    | LinkedInSocialShareIcon  | SocialShareComponent//LinkedInICon        |


  @Verify_the_social_share_icon_is_as_per_required_design_in_Mobile
  Scenario Outline: Verify the social share icon is as per required design in Mobile
    Given user open "<Device>" device
    And user get "SocialShare_Publish_URL" url in Mobile
    And user verify that "<SocialShareComponentICon>" on the "SocialFollowComponentPage" and "<ExpectedImage>" image are same in Mobile
    And user close device
    Examples:
      | Device             | SocialShareComponentICon | ExpectedImage                      |
      | iPad Air           | FacebookSocialShareIcon  | SocialShareComponent//FacebookIcon |
      | iPad Mini          | FacebookSocialShareIcon  | SocialShareComponent//FacebookIcon |
      | iPhone 12 Pro      | FacebookSocialShareIcon  | SocialShareComponent//FacebookIcon |
      | Pixel 5            | FacebookSocialShareIcon  | SocialShareComponent//FacebookIcon |
      | Samsung Galaxy S8+ | FacebookSocialShareIcon  | SocialShareComponent//FacebookIcon |
      | iPad Air           | LinkedInSocialShareIcon  | SocialShareComponent//LinkedInICon |
      | iPad Mini          | LinkedInSocialShareIcon  | SocialShareComponent//LinkedInICon |
      | iPhone 12 Pro      | LinkedInSocialShareIcon  | SocialShareComponent//LinkedInICon |
      | Pixel 5            | LinkedInSocialShareIcon  | SocialShareComponent//LinkedInICon |
      | Samsung Galaxy S8+ | LinkedInSocialShareIcon  | SocialShareComponent//LinkedInICon |

  @Verify_the_social_share_icon_is_as_per_required_design_in_Desktop
  Scenario Outline: Verify the social share icon is as per required design in Desktop
    Given user open "<Browser>" browser
    And user get "SocialShare_Publish_URL" url
    And user click the "<SocialShareComponentICon>" on the "SocialFollowComponentPage"
    And user wait for 3 sec
    And user verify that a new page opened in new tab with page title contains "<Title>"
    And user close browser
    Examples:
      | Browser | SocialShareComponentICon | Title    |
      | Chrome  | FacebookSocialShareIcon  | Facebook |
      | Firefox | FacebookSocialShareIcon  | Facebook |
      | Edge    | FacebookSocialShareIcon  | Facebook |
      | Chrome  | LinkedInSocialShareIcon  | LinkedIn |
      | Firefox | LinkedInSocialShareIcon  | LinkedIn |
      | Edge    | LinkedInSocialShareIcon  | LinkedIn |

  @Verify_the_social_share_icon_is_as_per_required_design_in_Mobile
  Scenario Outline: Verify the social share icon is as per required design in Mobile
    Given user open "<Device>" device
    And user get "SocialShare_Publish_URL" url in Mobile
    And user click the "<SocialShareComponentICon>" on the "SocialFollowComponentPage" in Mobile
    And user wait for 3 sec
    And user verify that a new page opened in new tab with page title contains "<Title>" in Mobile
    And user close device
    Examples:
      | Device             | SocialShareComponentICon | Title    |
      | iPad Air           | FacebookSocialShareIcon  | Facebook |
      | iPad Mini          | FacebookSocialShareIcon  | Facebook |
      | iPhone 12 Pro      | FacebookSocialShareIcon  | Facebook |
      | Pixel 5            | FacebookSocialShareIcon  | Facebook |
      | Samsung Galaxy S8+ | FacebookSocialShareIcon  | Facebook |
      | iPad Air           | LinkedInSocialShareIcon  | LinkedIn |
      | iPad Mini          | LinkedInSocialShareIcon  | LinkedIn |
      | iPhone 12 Pro      | LinkedInSocialShareIcon  | LinkedIn |
      | Pixel 5            | LinkedInSocialShareIcon  | LinkedIn |
      | Samsung Galaxy S8+ | LinkedInSocialShareIcon  | LinkedIn |

  @Verify_the_social_share_icon_is_as_per_required_design_in_Desktop
  Scenario Outline: Verify the social share icon is as per required design in Desktop
    Given user open "<Browser>" browser
    And user get "SocialShare_Publish_URL" url
    And user click the "<SocialShareComponentICon>" on the "SocialFollowComponentPage"
    And user wait for 3 sec
    And user verify that a new page opened in new tab with page title contains "<Title>"
    And user close browser
    Examples:
      | Browser | SocialShareComponentICon | Title    |
      | Chrome  | FacebookTextLink         | Facebook |
      | Firefox | FacebookTextLink         | Facebook |
      | Edge    | FacebookTextLink         | Facebook |
      | Chrome  | LinkedInTextLink         | LinkedIn |
      | Firefox | LinkedInTextLink         | LinkedIn |
      | Edge    | LinkedInTextLink         | LinkedIn |

  @Verify_the_social_share_icon_is_as_per_required_design_in_Mobile
  Scenario Outline: Verify the social share icon is as per required design in Mobile
    Given user open "<Device>" device
    And user get "SocialShare_Publish_URL" url in Mobile
    And user click the "<SocialShareComponentICon>" on the "SocialFollowComponentPage" in Mobile
    And user wait for 3 sec
    And user verify that a new page opened in new tab with page title contains "<Title>" in Mobile
    And user close device
    Examples:
      | Device             | SocialShareComponentICon | Title    |
      | iPad Air           | FacebookTextLink         | Facebook |
      | iPad Mini          | FacebookTextLink         | Facebook |
      | iPhone 12 Pro      | FacebookTextLink         | Facebook |
      | Pixel 5            | FacebookTextLink         | Facebook |
      | Samsung Galaxy S8+ | FacebookTextLink         | Facebook |
      | iPad Air           | LinkedInTextLink         | LinkedIn |
      | iPad Mini          | LinkedInTextLink         | LinkedIn |
      | iPhone 12 Pro      | LinkedInTextLink         | LinkedIn |
      | Pixel 5            | LinkedInTextLink         | LinkedIn |
      | Samsung Galaxy S8+ | LinkedInTextLink         | LinkedIn |