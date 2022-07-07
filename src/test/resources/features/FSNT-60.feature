@Text_Component @Smoke_Test @FSNT-60 @FSNT-166

Feature: RTE within Text component | Authoring

  •As an author, I can see that:
  1) This component is identical to the OOTB
  2) This component is to be used everywhere on the site
  3) This component is authorable for internal/external pages
  4) This component is to be configurable
  5) The characters entered via the US keyboard, such as <, >, ~, |, parentheses, can be used in the RTE without any issues since they can be interpreted in HTML code.
  6) Author should be able to assign typography style classes from the Style Guide to H1, H2, P tags

  Background: Launching Author instance on AEM
    Given user open "Chrome" browser
    And user get "AuthorInstance" url
    And user sendKeys "admin" in "UserName_EditBox" on the "Author_Login_Page"
    And user sendKeys "admin" in "Password_EditBox" on the "Author_Login_Page"
    And user click the "SignIn_Button" on the "Author_Login_Page"
    And user wait for the page to load
    And user click the "Sites_Icon" on the "AEM_Navigation_Page"
    And user click the "NT_FlexShares_Column_Page" on the "NT_FlexShares_Sites_Page"

    #Author_Instance
  Scenario: Verify functionality and icons in Text component
    Given user click the "Testing_Page" on the "Advisors_Page"
    When user click the "edit" on the "NT_FlexShares_Sites_Page"
    And user click the "Drag_Components_here" on the "Testing_Page"
    And user click the "Insert_Component" on the "Drag_Components_here"
    And user sendKeys "Text" in "Insert_New_Component" on the "pop_up"
    And user click the "Text" on the "Search_Box"
    And user click the "Text_component" on the "Testing_Page"
    #Editing Text
    And user click the "edit" on the "Text_component"
    And user sendKeys "content" in "Text_component" on the "Testing_Page"
      | content                                                                                                                                                           |
      | Abhy                                                                                                                                                              |
      | This is for testing test component                                                                                                                                |
      | The Text component is one of the most frequently used components in AEM. It allows you to insert and format text content, as well as add images and format tables |
    And user click the "Format" on the "Icons"
      | Format |
      | Bold
      | Italic |
    And user click the "Lists" on the "Icons"
      | Lists         |
      | Bullet list   |
      | Numbered List |
      | Outdent       |
      | Indent        |
    And user click the "Hyperlink" on the "Icons"
    ## Try with Internal and External links and adding more links
    And user click the "Unlink" on the "Icons"
    And user click the "Fullscreen" on the "Icons"
    And user click the "Minimize" on the "Text_component"
    And user click the "save" on the "Icons"
    And user click the "close" on the "Icons"
    #Try with all Icons in the text component

  Scenario: verify the configuration functions in text component
    Given user click the "Testing_Page" on the "Advisors_Page"
    When user click the "edit" on the "NT_FlexShares_Sites_Page"
    And user click the "Drag_Components_here" on the "Testing_Page"
    And user click the "Insert_Component" on the "Drag_Components_here"
    And user sendKeys "Text" in "Insert_New_Component" on the "pop_up"
    And user click the "Text" on the "Search_Box"
    And user click the "Text_component" on the "Testing_Page"
     #Configuring Text component
    And user click the "configure" on the "Text_component"
    And user click the "Paragraph_formats" on the "Text_popup"
    And user hover the "Paragraph_items"
      | Paragraph_items |
      | Paragraph       |
      | Heading 1       |
      | Heading 2       |
      | Heading 3       |
      | Heading 4       |
      | Heading 5       |
      | Heading 6       |
      | Quote           |
      | Preformated     |
    And user sendKeys "123456" in "ID" on the "Text_popup"
    And user click the "Done" on the "Text_popup"
      #Try also clicking "cancel"
      #Try "paste as text", "paste as word", "backspace the text", delete the text, select all
         #cut, copy, paste from keyboard, add image(drag and drop from assets)
    Then user allowed to all functionality

  Scenario: Verify the special characters entered in RTE
    Given user click the "Testing_Page" on the "Advisors_Page"
    When user click the "edit" on the "NT_FlexShares_Sites_Page"
    And user click the "Drag_Components_here" on the "Testing_Page"
    And user click the "Insert_Component" on the "Drag_Components_here"
    And user sendKeys "Text" in "Insert_New_Component" on the "pop_up"
    And user click the "Text" on the "Search_Box"
    And user click the "Text_component" on the "Testing_Page"
    And user click the "edit" on the "Text_component"
    And user sendKeys "Parentheses" in "Text_component" on the "Testing_Page"
      | Parentheses |
      | <           |
      | >           |
      | ~           |
      | pipeline    |
    And user click the "save" on the "Text_component"
    Then verify it can be used without issue
       

    #publish_Instance
  Scenario: Verify the Text component in publish instance
    And user click the "Page_Information_Icon" on the "Testing_Page"
    And user hover to "View_as_published" on the "Page_Information_Icon"
    And user click the "View_as_published" on the "Page_Information_Icon"
    And user get "Publish_Instance" url
    And user verify "Text" isDisplayed on the "Testing_Page"
    #verify all functionalities used above in "author_instance" are displayed or not
    #verify in all browsers ("Firefox","Edge")
    #verify in all devices






