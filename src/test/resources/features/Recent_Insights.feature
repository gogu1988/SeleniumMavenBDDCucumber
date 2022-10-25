@Recent_Insights @Sprint_5
Feature: Verify Recent Insights Feature

  Scenario Outline: Verify Recent Insights UI in Desktop
    Given user open "<Browser>" browser
    And user get "Recent_Insights_Variation_1_URL" url
    Then user take screen shot of "Recent_Insights_Section" on the "Recent_Insights_Page" and save it as "Recent_Insights_Section" at "Recent_Insights"
    Then user verify that "Recent_Insights_Section" on the "Recent_Insights_Page" and "Recent_Insights\\Recent_Insights_Section" image are same
    And user close browser
    Examples:
      | Browser |
      | Chrome  |
#      | Firefox |
#      | Edge    |