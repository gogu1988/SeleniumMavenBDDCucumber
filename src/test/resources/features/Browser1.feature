@Login1

Feature: Run 2 Testing Login Feature

  Scenario Outline: Login Scenario 1
    Given user open "<Browser>" browser
    And user navigate to the google page
    And user take screen shot as "loginPage"
    And user get Text of "<Element>" on "loginPage"
    Then user verify element text "<ExpectedText>"
    When user get TagName of "<Element>" on "loginPage"
    When user get "class" Attribute of "<Element>" on "loginPage"
    When user get Text of "<Element>" on "loginPage"
    When user get Location of "<Element>" on "loginPage"
    When user get Size of "<Element>" on "loginPage"
    When user get Rect of "<Element>" on "loginPage"
    When user get CssValue of "background-color" of "<Element>" on "loginPage"
    And user click using Actions on "loginPage"
    And use close browser


    Examples:
      | Browser | Element | ExpectedText |
      | Chrome  | gmail   | Gmail        |
      | Chrome  | images  | Images       |
      | Chrome  | telugu  | తెలుగు       |

  Scenario Outline: Login Scenario 2
    Given user open "<Browser>" browser
    And user navigate to the google page
    And user get Text of "<Element>" on "loginPage"
    Then user verify element text "<ExpectedText>"
    When user get TagName of "<Element>" on "loginPage"
    When user get "class" Attribute of "<Element>" on "loginPage"
    When user get Text of "<Element>" on "loginPage"
    When user get Location of "<Element>" on "loginPage"
    When user get Size of "<Element>" on "loginPage"
    When user get Rect of "<Element>" on "loginPage"
    When user get CssValue of "background-color" of "<Element>" on "loginPage"
    And user click using Actions on "loginPage"
    And use close browser


    Examples:
      | Browser | Element | ExpectedText |
      | Chrome  | gmail   | Gmail        |

  @Test1
  Scenario: Test
    Given Then Print this as HashMap
      | Browser | Element | ExpectedText |
      | Chrome  | gmail   | Gmail        |
      | Chrome  | images  | Images       |
      | Chrome  | telugu  | తెలుగు       |

    And Then Print this as List of HashMap
      | Browser | Element | ExpectedText |
      | Chrome  | gmail   | Gmail        |
      | Chrome  | images  | Images       |
      | Chrome  | telugu  | తెలుగు       |

    And Then Print this as List of List
      | Browser | Element | ExpectedText |
      | Chrome  | gmail   | Gmail        |
      | Chrome  | images  | Images       |
      | Chrome  | telugu  | తెలుగు       |