@Key_Insight_Carousel
Feature: Verify key insight carousel functionality


  @001
  Scenario: Verify user can navigate carousel to forward and backward direction
    Given user open "Chrome" browser
    And user get "KeyInsights_URL" url
    And user click the "slider_1" on the "Key_Insights_Page"
    And user click the "slider_2" on the "Key_Insights_Page"
    And user click the "slider_3" on the "Key_Insights_Page"
    And user click the "slider_2" on the "Key_Insights_Page"
    And user click the "slider_1" on the "Key_Insights_Page"
    And user click the "slider_3" on the "Key_Insights_Page"

  @002
  Scenario: Verify on each carousel contains carousel image,background image,header,title,link and author field.
    Given user open "Chrome" browser
    And user get "KeyInsights_URL" url
    And user verify "carousel_img" isDisplayed on the "Key_Insights_Page"
    And user verify "header" isDisplayed on the "Key_Insights_Page"
    And user verify "title" isDisplayed on the "Key_Insights_Page"
    And user verify "link" isDisplayed on the "Key_Insights_Page"
    And user verify "author" isDisplayed on the "Key_Insights_Page"
    And user verify "background_image" isDisplayed on the "Key_Insights_Page"
    And user click the "slider_2" on the "Key_Insights_Page"
    And user verify "carousel_img" isDisplayed on the "Key_Insights_Page"
    And user verify "header" isDisplayed on the "Key_Insights_Page"
    And user verify "title" isDisplayed on the "Key_Insights_Page"
    And user verify "link" isDisplayed on the "Key_Insights_Page"
    And user verify "author" isDisplayed on the "Key_Insights_Page"
    And user verify "background_image" isDisplayed on the "Key_Insights_Page"
    And user click the "slider_3" on the "Key_Insights_Page"
    And user verify "carousel_img" isDisplayed on the "Key_Insights_Page"
    And user verify "header" isDisplayed on the "Key_Insights_Page"
    And user verify "title" isDisplayed on the "Key_Insights_Page"
    And user verify "link" isDisplayed on the "Key_Insights_Page"
    And user verify "author" isDisplayed on the "Key_Insights_Page"
    And user verify "background_image" isDisplayed on the "Key_Insights_Page"


  @003
  Scenario: Verify carousel link will open in new tab
    Given user open "Chrome" browser
    And user get "KeyInsights_URL" url
    And user click the "link" on the "Key_Insights_Page"
    And user wait for 9 sec
    Then user verify that a new page opened in new tab with page title as "Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!"


  @004
  Scenario Outline:Verify user can navigate carousel to forward and backward direction for mobile view
    Given user open "<Device>" device
    And user get "KeyInsights_URL" url in Mobile
    And user click the "slider_1" on the "Key_Insights_Page" in Mobile
    And user click the "slider_2" on the "Key_Insights_Page" in Mobile
    And user click the "slider_3" on the "Key_Insights_Page" in Mobile


    Examples:
      | Device             |
      | iPad Air           |
      | iPad Mini          |
      | iPhone 12 Pro      |
      | Pixel 5            |
      | Samsung Galaxy S8+ |








   

   










