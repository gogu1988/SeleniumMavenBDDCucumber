Feature: Image Comparision

  @ImageCompat
  Scenario: This is image comparision
#    Given user open "Chrome" browser
    Given user open "Browser_Stack" browser
    And user get "https://www.flexshares.com/gb/en/individual" url
#    And user get "https://www.flexshares.com/gb/en/individual" url
#    Then user take screen shot of "Google_Logo" on the "GoogleHomePage" and save it as "Google_Logo" at "Google"
    Then user verify that "Google_Logo" on the "GoogleHomePage" and "Google/Google_Logo" image are same

  @ImageCompat
  Scenario: This is image comparision
#    Given user open "Chrome" browser
    Given user open "Browser_Stack" browser
    And user get "https://www.flexshares.com/gb/en/individual" url
#    And user get "https://www.flexshares.com/gb/en/individual" url
#    Then user take screen shot of "Google_Logo" on the "GoogleHomePage" and save it as "Google_Logo" at "Google"
    Then user verify that "Google_Logo" on the "GoogleHomePage" and "Google/Google_Logo" image are same

  @ImageCompat
  Scenario Outline: This is image comparision
#    Given user open "Chrome" browser
    Given user open "Browser_Stack" browser
    And user get "https://www.flexshares.com/gb/en/individual" url
#    And user get "https://www.flexshares.com/gb/en/individual" url
#    Then user take screen shot of "Google_Logo" on the "GoogleHomePage" and save it as "Google_Logo" at "Google"
    Then user verify that "Google_Logo" on the "GoogleHomePage" and "Google/Google_Logo" image are same
    And user wait for "<1>" sec
    And user wait for 2 sec

    Examples:
      | 1 |
      | 2 |
      | 3 |
      | 4 |
    
    Scenario: Validating DB
      Given user open "chrome" browser
