@Wallte

Feature: Wallet Company Demo

  Scenario Outline:
    Given user open "<Browser>" browser
    Then user get "<URL>" url
    And user sendKeys "<UserName>" in "loginIdEditBox" on the "LoginOrSignUpPage"
    And user sendKeys "<Password>" in "passwordEditBox" on the "LoginOrSignUpPage"
    And user click the "loginButton" on the "LoginOrSignUpPage"
    And user click the "WhatsOnYourMindLabel" on the "HomePage"
    And user sendKeys "<PostMessage>" in "WhatsOnYourMindEditBox" on the "CreatePostPopUpPage"
    And user click the "PostButton" on the "CreatePostPopUpPage"

    Examples:
      | Browser | URL                       | UserName      | Password | PostMessage |
      | Chrome  | https://www.facebook.com/ | xyz@gmail.com | password | Hello World |

  @Test
  Scenario Outline:
    Given user open "<Browser>" browser
    Then user take screen shot
    Then user write the log as "Hello this is log"
    Then user get "https://wallethub.com/profile/test-insurance-company-13732055i" url
    And user click the "Reviews_Label" on the "WalletHub_Page"
    And user move the mouse to the "4thReviewStar_Icon" on the "WalletHub_Page"
    And user click the "4thReviewStar_Icon" on the "WalletHub_Page"
    And user click the "Select_DropDown" on the "WalletHub_Page"
    And user click the "HealthInsurance_DropDownValue" on the "WalletHub_Page"
    Given user sendKeys below para in "WriteYourReview_EditBox" on the "WalletHub_Page"
    """ Hi this is test Hi this is test Hi this is test Hi this is test Hi this is test
        Hi this is test Hi this is test Hi this is test Hi this is test Hi this is test
        Hi this is test Hi this is test Hi this is test Hi this is test Hi this is test
    """


    Examples:
      | Browser |
      | Chrome  |



