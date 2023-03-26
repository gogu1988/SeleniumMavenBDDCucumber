@Demo_1 @Demo
Feature: Demo 1

  @CSV
  Scenario Outline: CSV File Test
    Given print "a"
    And print "b"
    Then print "c"
    Examples: {"dataFile":"resources/data/logintestdata.csv"}


    @Test_1
  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

    @Login @Regression
  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

      @Smoke
  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser

    @Login @Regression
  Scenario: Login for demo purpose
    Given user open "Chrome" browser
    And user get "https://www.google.com/" url
    And user sendKeys "Selenium" in "Edit_Box" on the "google"
    And user close browser
