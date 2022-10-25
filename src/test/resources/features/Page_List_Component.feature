@Page_List_Component @Sprint_5
Feature: Verify Page List Component feature

  @Verify_UI_of_Page_List_Component
  Scenario Outline: Verify UI of Page List Component
    Given user open "<Browser>" browser
    And user get "Page_List_Component_URL" url
    And user wait for 3 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Image>" image are same
    And user close browser

    Examples:
      | Browser | Expected_Image                                 |
      | Chrome  | Page_List_Component\\Page_List_Section         |
      | Firefox | Page_List_Component\\Page_List_Section_Firefox |
      | Edge    | Page_List_Component\\Page_List_Section         |

  @Verify_Filter_Option_of_Page_List_Component
  Scenario Outline: Verify Filter Option of Page List Component
    Given user open "<Browser>" browser
    And user get "Page_List_Component_URL" url
    And user wait for 3 sec
    And user move the mouse to the "Page_List_Item_2" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Item_2_Mouse_Hover_All" image are same
    And user click the "Funds_and_Strategy_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_Funds_and_Strategy_Filter_Option" image are same
    And user move the mouse to the "Page_List_Item_2" on the "Page_List_Component"
    And user wait for 3 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter" image are same
    And user click the "Markets_and_Trading_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_Markets_and_Trading_Filter_Option" image are same
    And user click the "Practice_Management_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_Practice_Management_Filter_Option" image are same
    And user click the "About_Us_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_About_Us_Filter_Option" image are same
    And user click the "Tax_and_Legal_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_Tax_and_Legal_Filter_Option" image are same
    And user close browser

    Examples:
      | Browser |
      | Chrome  |
      | Edge    |

  @Verify_Filter_Option_of_Page_List_Component
  Scenario Outline: Verify Filter Option of Page List Component
    Given user open "<Browser>" browser
    And user get "Page_List_Component_URL" url
    And user wait for 3 sec
    And user move the mouse to the "Page_List_Item_2" on the "Page_List_Component"
    And user wait for 3 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Item_2_Mouse_Hover_All_Firefox" image are same
    And user click the "Funds_and_Strategy_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_Funds_and_Strategy_Filter_Option_Firefox" image are same
    And user move the mouse to the "Page_List_Item_2" on the "Page_List_Component"
    And user wait for 3 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter_Firefox" image are same
    And user click the "Markets_and_Trading_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_Markets_and_Trading_Filter_Option_Firefox" image are same
    And user click the "Practice_Management_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_Practice_Management_Filter_Option_Firefox" image are same
    And user click the "About_Us_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_About_Us_Filter_Option_Firefox" image are same
    And user click the "Tax_and_Legal_Filter_Option" on the "Page_List_Component"
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "Page_List_Component\\Page_List_Section_Tax_and_Legal_Filter_Option_Firefox" image are same
    And user close browser

    Examples:
      | Browser |
      | Firefox |

  @Verify_UI_of_Page_List_Component_in_Mobile
  Scenario Outline: Verify UI of Page List Component in Mobile
    Given user open "<Device>" device
    And user get "Page_List_Component_URL" url in Mobile
    And user wait for 3 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Image>" image are same in Mobile
    And user close device

    Examples:
      | Device             | Expected_Image                                            |
      | iPad Air           | Page_List_Component\\iPad_Air_Page_List_Section           |
      | iPad Mini          | Page_List_Component\\iPad_Mini_Page_List_Section          |
      | iPhone 12 Pro      | Page_List_Component\\iPhone_12_Pro_Page_List_Section      |
      | Pixel 5            | Page_List_Component\\Pixel_5_Page_List_Section            |
      | Samsung Galaxy S8+ | Page_List_Component\\Samsung_Galaxy_S8+_Page_List_Section |

  @Verify_Filter_Option_of_Page_List_Component_in_Mobile
  Scenario Outline: Verify Filter Option of Page List Component in Mobile
    Given user open "<Device>" device
    And user get "Page_List_Component_URL" url in Mobile
    And user wait for 3 sec
    And user move the mouse to the "Page_List_Item_2" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Item_2_Mouse_Hover_All>" image are same in Mobile
    And user click the "Funds_and_Strategy_Filter_Option" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_Funds_and_Strategy_Filter_Option>" image are same in Mobile
    And user move the mouse to the "Page_List_Item_2" on the "Page_List_Component" in Mobile
    And user wait for 3 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter>" image are same in Mobile
    And user click the "Markets_and_Trading_Filter_Option" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_Markets_and_Trading_Filter_Option>" image are same in Mobile
    And user click the "Practice_Management_Filter_Option" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_Practice_Management_Filter_Option>" image are same in Mobile
    And user click the "About_Us_Filter_Option" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_About_Us_Filter_Option>" image are same in Mobile
    And user click the "Tax_and_Legal_Filter_Option" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_Tax_and_Legal_Filter_Option>" image are same in Mobile
    And user close device

    Examples:
      | Device    | Expected_Page_List_Item_2_Mouse_Hover_All                       | Expected_Page_List_Section_Funds_and_Strategy_Filter_Option                       | Expected_Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter                       | Expected_Page_List_Section_Markets_and_Trading_Filter_Option                       | Expected_Page_List_Section_Practice_Management_Filter_Option                       | Expected_Page_List_Section_About_Us_Filter_Option                       | Expected_Page_List_Section_Tax_and_Legal_Filter_Option                       |
      | iPad Air  | Page_List_Component\\iPad_Page_List_Item_2_Mouse_Hover_All      | Page_List_Component\\iPad_Page_List_Section_Funds_and_Strategy_Filter_Option      | Page_List_Component\\iPad_Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter      | Page_List_Component\\iPad_Page_List_Section_Markets_and_Trading_Filter_Option      | Page_List_Component\\iPad_Page_List_Section_Practice_Management_Filter_Option      | Page_List_Component\\iPad_Page_List_Section_About_Us_Filter_Option      | Page_List_Component\\iPad_Page_List_Section_Tax_and_Legal_Filter_Option      |
      | iPad Mini | Page_List_Component\\iPad_Mini_Page_List_Item_2_Mouse_Hover_All | Page_List_Component\\iPad_Mini_Page_List_Section_Funds_and_Strategy_Filter_Option | Page_List_Component\\iPad_Mini_Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter | Page_List_Component\\iPad_Mini_Page_List_Section_Markets_and_Trading_Filter_Option | Page_List_Component\\iPad_Mini_Page_List_Section_Practice_Management_Filter_Option | Page_List_Component\\iPad_Mini_Page_List_Section_About_Us_Filter_Option | Page_List_Component\\iPad_Mini_Page_List_Section_Tax_and_Legal_Filter_Option |


  @Verify_Filter_Option_of_Page_List_Component_in_Mobile
  Scenario Outline: Verify Filter Option of Page List Component in Mobile
    Given user open "<Device>" device
    And user get "Page_List_Component_URL" url in Mobile
    And user wait for 3 sec
    And user move the mouse to the "Page_List_Item_2" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Item_2_Mouse_Hover_All>" image are same in Mobile
    And user click the "Filter_Toggler_Button" on the "Page_List_Component" in Mobile
    And user click the "Funds_and_Strategy_Filter_Link" on the "Page_List_Component" in Mobile
    And user click the "Page_List_Component_Cross_Icon" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_Funds_and_Strategy_Filter_Option>" image are same in Mobile
    And user move the mouse to the "Page_List_Item_2" on the "Page_List_Component" in Mobile
    And user wait for 3 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter>" image are same in Mobile
    And user click the "Filter_Toggler_Button" on the "Page_List_Component" in Mobile
    And user click the "Markets_and_Trading_Filter_Link" on the "Page_List_Component" in Mobile
    And user click the "Page_List_Component_Cross_Icon" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_Markets_and_Trading_Filter_Option>" image are same in Mobile
    And user click the "Filter_Toggler_Button" on the "Page_List_Component" in Mobile
    And user click the "Practice_Management_Filter_Link" on the "Page_List_Component" in Mobile
    And user click the "Page_List_Component_Cross_Icon" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_Practice_Management_Filter_Option>" image are same in Mobile
    And user click the "Filter_Toggler_Button" on the "Page_List_Component" in Mobile
    And user click the "About_Us_Filter_Link" on the "Page_List_Component" in Mobile
    And user click the "Page_List_Component_Cross_Icon" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_About_Us_Filter_Option>" image are same in Mobile
    And user click the "Filter_Toggler_Button" on the "Page_List_Component" in Mobile
    And user click the "Tax_and_Legal_Filter_Link" on the "Page_List_Component" in Mobile
    And user click the "Page_List_Component_Cross_Icon" on the "Page_List_Component" in Mobile
    And user wait for 2 sec
    Then user verify that "Page_List_Section" on the "Page_List_Component" and "<Expected_Page_List_Section_Tax_and_Legal_Filter_Option>" image are same in Mobile
    And user close device

    Examples:
      | Device             | Expected_Page_List_Item_2_Mouse_Hover_All                                | Expected_Page_List_Section_Funds_and_Strategy_Filter_Option                                | Expected_Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter                                | Expected_Page_List_Section_Markets_and_Trading_Filter_Option                                | Expected_Page_List_Section_Practice_Management_Filter_Option                                | Expected_Page_List_Section_About_Us_Filter_Option                                | Expected_Page_List_Section_Tax_and_Legal_Filter_Option                                |
      | iPhone 12 Pro      | Page_List_Component\\iPhone_12_Pro_Page_List_Item_2_Mouse_Hover_All      | Page_List_Component\\iPhone_12_Page_List_Section_Funds_and_Strategy_Filter_Option          | Page_List_Component\\iPhone_12_Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter          | Page_List_Component\\iPhone_12_Page_List_Section_Markets_and_Trading_Filter_Option          | Page_List_Component\\iPhone_12_Page_List_Section_Practice_Management_Filter_Option          | Page_List_Component\\iPhone_12_Page_List_Section_About_Us_Filter_Option          | Page_List_Component\\iPhone_12_Page_List_Section_Tax_and_Legal_Filter_Option          |
      | Pixel 5            | Page_List_Component\\Pixel_5_Page_List_Item_2_Mouse_Hover_All            | Page_List_Component\\Pixel_5_Page_List_Section_Funds_and_Strategy_Filter_Option            | Page_List_Component\\Pixel_5_Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter            | Page_List_Component\\Pixel_5_Page_List_Section_Markets_and_Trading_Filter_Option            | Page_List_Component\\Pixel_5_Page_List_Section_Practice_Management_Filter_Option            | Page_List_Component\\Pixel_5_Page_List_Section_About_Us_Filter_Option            | Page_List_Component\\Pixel_5_Page_List_Section_Tax_and_Legal_Filter_Option            |
      | Samsung Galaxy S8+ | Page_List_Component\\Samsung_Galaxy_S8+_Page_List_Item_2_Mouse_Hover_All | Page_List_Component\\Samsung_Galaxy_S8+_Page_List_Section_Funds_and_Strategy_Filter_Option | Page_List_Component\\Samsung_Galaxy_S8+_Page_List_Item_2_Mouse_Hover_Funds_and_Strategy_Filter | Page_List_Component\\Samsung_Galaxy_S8+_Page_List_Section_Markets_and_Trading_Filter_Option | Page_List_Component\\Samsung_Galaxy_S8+_Page_List_Section_Practice_Management_Filter_Option | Page_List_Component\\Samsung_Galaxy_S8+_Page_List_Section_About_Us_Filter_Option | Page_List_Component\\Samsung_Galaxy_S8+_Page_List_Section_Tax_and_Legal_Filter_Option |

