@Demo_2 @Demo
Feature: Demo 2

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser