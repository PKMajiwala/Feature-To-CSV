Feature: Login

# 
  Scenario: User login with valid credentials
    Given a User is on login page and has valid <login_name> and <password>
    When a
    Then User should be redirected to Dashboard page

  
      | login_name    | password      |
      | janki.gadhiya | janki.gadhiya |

  # AddStoneToBasketFromPagePositiveTestCase01
  Scenario: Add Stone to Basket
    Given a User on dashboard page
    When User clicks on Search Icon
    And User is redirected to search page
    And User enter carat values <From Value> <To Value>
    And User clicks on carat add symbol
    And User selects diamond shape as cushion
    And clicks on Search
    And User in Search Result
    And User selects a Stone
    And User clicks on navigation right
    And User click Add to Basket
    Then Message display Stone added to My Basket successfully

  
      | From Value |  | To Value |
      |          1 |  |        2 |

  # ApplyDDCOnBasketPagePositiveTestcase02
  Scenario: Apply DDC
    Given a User in Search Result Page
    When User clicks on Basket icon
    Then User is redirected to My Basket page
    And User clicks on navigation right
    And User Selects a pink legend stone on Basket page
    And User Click Apply DDC
    And User selects time
    And User Click Apply
    And Message displayed Successfully stone added/updated to DDC list
    And User Checks DDC icon turned green
    And User Clicks DDC icon
    And User see pop up menu for DDC
    And User Checks the DDC time for the selected stone
    And User Clicks on cross button

  # UpdateDDCPositiveTestCase03
  Scenario: Update DDC
  Given a
    When User clicks on Basket icon
    Then User is redirected to My Basket page
    And User clicks on navigation right
    And User click DDC icon for stone on Basket page
    And User Select different time
    And User Click update
    And Message displayed Successfully stone added/updated to DDC list

  # RemoveDDCPositiveTestCase04
  Scenario: Remove DDC
  Given a
    When User click DDC icon for stone on Basket page
    And User Click Remove
    Then Message display successfully stone removed from the DDC stone list
    And User Check that DDC Icon Turns from Green to Grey

  # ApplyDDCByClickingDDCIconPositiveTestCase05
  Scenario: Apply DDC by clicking on DDC icon
    Given a User in Basket Page
    When User click DDC Icon to apply DDC
    And User selects time
    And User Click Apply
    Then Message displayed Successfully stone added/updated to DDC list
    And User Checks DDC icon turned green

  # UpdateDDCPositiveTestCase06
  Scenario: Update DDC
  Given a
    When User click DDC icon for stone on Basket page
    And User Select different time
    And User Click update
    Then Message displayed Successfully stone added/updated to DDC list
    When User Clicks DDC icon
    And User see pop up menu for DDC
    And User Checks the DDC time for the selected stone
    And User Clicks on cross button

  # RemoveDDCPositiveTestCase07
  Scenario: Remove DDC
  Given a
    When User click DDC icon for stone on Basket page
    And User Click Remove
    Then Message display successfully stone removed from the DDC stone list
    And User Check that DDC Icon Turns from Green to Grey

  # ApplyDDCIconPositiveTestCase08
  Scenario: Apply DDC by selecting a stone
    Given a User in Basket Page
    When User Click packet icon
    Then User is redirected to Packet page
    And User select packet name as ddc_packet
    And User clicks on navigation right
    And User Selects a pink legend stone on Packet Page
    And User Click Apply DDC
    And User selects time
    And User Click Apply
    And Message displayed Successfully stone added/updated to DDC list
    And User Checks DDC icon turned green
    And User Clicks DDC icon
    And User is redirected to DDC Page
    And User Checks the DDC time for the selected stone
    And User Clicks on cross button

  # UpdateDDCPositiveTestCase09
  Scenario: Update DDC
  Given a
    When User click DDC icon for stone on Packet page
    And User Select different time
    And User Click update
    Then Message displayed Successfully stone added/updated to DDC list

  # RemoveDDCPositiveTestCase10
  Scenario: Remove DDC
  Given a
    When User click DDC icon for stone on Packet page
    And User Click Remove
    Then Message display successfully stone removed from the DDC stone list
    And User Check that DDC Icon Turns from Green to Grey

  # ApplyDDCOnPacketPagePositiveTestCase11
  Scenario: Apply DDC by clicking on DDC icon
    Given a User in Packet page
    When User click DDC Icon to apply DDC
    And User selects time
    And User Click Apply
    And Message displayed Successfully stone added/updated to DDC list
    And User Checks DDC icon turned green

  # UpdateDDCPacketPagePositiveTestCase12
  Scenario: Update DDC
  Given a
    When User click DDC icon for stone on Packet page
    And User Select different time
    And User Click update
    Then Message displayed Successfully stone added/updated to DDC list
    And User Clicks DDC icon
    And User is redirected to DDC Page
    And User Checks the DDC time for the selected stone

  # RemoveDDCPacketPagePositiveTestCase13
  Scenario: Remove DDC
  Given a
    When User Click on packet Icon
    Then User select packet name as ddc_packet
    And User clicks on navigation right
    And User click DDC icon for stone on Packet page
    And User Click Remove
    And Message display successfully stone removed from the DDC stone list
    And User Check that DDC Icon Turns from Green to Grey

  # ApplyDDCOnSearchPagePositiveTestCase14
  Scenario: Apply DDC by selecting a stone
    Given a User in Packet Page
    When User clicks on Search Icon
    Then User is redirected to search page
    And User enter carat values <From Value> <To Value>
    And User clicks on carat add symbol
    And User selects diamond shape as round
    And clicks on Search
    And User in Search Result
    And User selects a Stone
    And User Click Apply DDC
    And User selects time
    And User Click Apply
    And Message displayed Successfully stone added/updated to DDC list
    And User clicks on navigation right
    And User Checks DDC icon turned green
    And User Clicks DDC icon
    And User see pop up menu for DDC
    And User Checks the DDC time for the selected stone
    And User Clicks on cross button

  
      | From Value |  | To Value |
      |          1 |  |        2 |

  # UpdateDDCOnSearchResultPagePositiveTestCase15
  Scenario: Update DDC
  Given a
    When User click DDC icon for stone on Search page
    And User Select different time
    And User Click update
    Then Message displayed Successfully stone added/updated to DDC list

  # RemoveDDCOnSearchResultPagePositiveTestCase16
  Scenario: Remove DDC
  Given a
    When User click DDC icon for stone on Search page
    And User Click Remove
    Then Message display successfully stone removed from the DDC stone list
    And User Check that DDC Icon Turns from Green to Grey

  # Search page Apply DDC by clicking DDC icon# 
  Scenario: Apply DDC by clicking on DDC icon
  Given a
    When User Click Dashboard Icon
    And User in dashboard page
    And User clicks on Search Icon
    Then User is redirected to search page
    And User enter carat values <From Value> <To Value>
    And User clicks on carat add symbol
    And User selects diamond shape as round
    And clicks on Search
    And User in Search Result
    And User clicks on navigation right
    And User click DDC Icon to apply DDC
    And User selects time
    And User Click Apply
    And Message displayed Successfully stone added/updated to DDC list
    And User Checks DDC icon turned green

  
      | From Value |  | To Value |
      |          1 |  |        2 |
# 
  Scenario: Update DDC
  Given a
    When User click DDC icon for stone on Search page
    And User Select different time
    And User Click update
    Then Message displayed Successfully stone added/updated to DDC list
    And User Clicks DDC icon
    And User is redirected to DDC Page
    And User Checks the DDC time for the selected stone
# 
  Scenario: Remove DDC
  Given a
    When User clicks on Search Icon
    Then User is redirected to search page
    And User enter carat values <From Value> <To Value>
    And User clicks on carat add symbol
    And User selects diamond shape as round
    And clicks on Search
    And User in Search Result
    And User clicks on navigation right
    And User click DDC icon for stone on Search page
    And User Click Remove
    And Message display successfully stone removed from the DDC stone list
    And User Check that DDC Icon Turns from Green to Grey

  
      | From Value |  | To Value |
      |          1 |  |        2 |
# 
  Scenario: Log out user at the end of test
  Given a
    When User clicks on log out icon and agrees to prompt
    Then User should be redirected to login page
