Feature: This is preprod image feature

  @Preprod
  Scenario: This is Image
    Given user open "Chrome" browser
    And user get "https://allthingsweb:hudson212!@preprod.publicissapient.com/" url
    And user scroll into view using java script for "Girl_With_Headphone" on the "Preprod"
    Then user take screen shot of "Girl_With_Headphone" on the "Preprod" and save it as "Girl_With_Headphone" at "Preprod"