@Demo
Feature: Demo 2

  @Demo_
  Scenario Outline: Login for demo purpose
    Given user open "<Browser>" browser
    And user get "https://www.google.com/" url
    And user sendKeys "<Text>" in "Edit_Box" on the "google"
    And user close browser
    Examples:
      | Browser | Text  |
      | Chrome  | Hi    |
      | Firefox | Hello |

  @Demo_2
  Scenario Outline: CSV
    Given user open "<Browser>" browser
    And user get "https://www.google.com/" url
    And user sendKeys "<Text>" in "Edit_Box" on the "google"
    And user close browser
    Examples:
      | Test.CSV |