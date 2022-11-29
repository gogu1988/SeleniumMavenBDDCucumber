Feature: Reading data from CSV file

  Scenario Outline: Data reading from CSV
    Given user print this "<FileName>"

    Examples:
      | FileName |
      | test.csv |


  Scenario: Changing the data in run time
    Given user print this "test"

  @Demo_4
  Scenario Outline: Search Keyword using data from file
    When I search for "<searchKey>"
    Then I get at least <number> results
    Then it should have "<searchResult>" in search results

    Examples:{'datafile':'resources/testdata.csv'}