Feature: Test Add Cabin Feature

  # ADD_CABIN01_SAMPLE_DATA
  Scenario: Validate with correct credentials
    Given Open browser and locate loginpage
    When User enter credentials
      | login03_positive_correct_data |
    And Click on Login button
    Then Login should successfull

  # ADD_CABIN02_NEGETIVE_DAYS
  Scenario: New tables will add with following credentials with no additional tables
    Given Dashboard page
    When Click on KAM Master page
    And Navigate to Add Cabin/Table page
    And Cabin ID is selected
      | add_cabin01_new_cabin_with_simple_data |
    And Cabin name is generated
      | add_cabin01_new_cabin_with_simple_data |
    And Select time slot
      | add_cabin01_new_cabin_with_simple_data |
    And Select Time Interval
      | add_cabin01_new_cabin_with_simple_data |
    And Fill Future booking and comments
      | add_cabin01_new_cabin_with_simple_data |
    And Change status
    And Add Table Name
      | add_cabin01_new_cabin_with_simple_data |
    And Selecting KAM Master masterFlag
      | add_cabin01_new_cabin_with_simple_data |
    And For each table tableName there is one master
      | add_cabin01_new_cabin_with_simple_data |
    And Working days days will be daysFlag
      | add_cabin01_new_cabin_with_simple_data |
    And Click on submit and verify message
    Then Message will be displayed as successMessage
      | add_cabin01_new_cabin_with_simple_data |

  # ADD_CABIN03_CHARACTER_DAYS
  Scenario: User is not able to enter negetive days
    Given Add Cabin/Table page opened
    When Cabin ID is selected
      | add_cabin02_data_with_negetive_days |
    And Cabin name is generated
      | add_cabin02_data_with_negetive_days |
    And Select time slot
      | add_cabin02_data_with_negetive_days |
    And Select Time Interval
      | add_cabin02_data_with_negetive_days |
    And Fill Future booking and comments
      | add_cabin02_data_with_negetive_days |
    Then User is not able to enter negetive numbers
      | add_cabin02_data_with_negetive_days |

  # ADD_CABIN04_WITH_TABLE
  Scenario: User cannot able to enter character as a day
    Given Add Cabin/Table page opened
    When Cabin ID is selected
      | add_cabin03_data_with_char_days |
    And Cabin name is generated
      | add_cabin03_data_with_char_days |
    And Select time slot
      | add_cabin03_data_with_char_days |
    And Select Time Interval
      | add_cabin03_data_with_char_days |
    And Fill Future booking and comments
      | add_cabin03_data_with_char_days |
    Then User is not able to enter negetive numbers
      | add_cabin03_data_with_char_days |

  # ADD_CABIN05_DELETING_CABIN
  Scenario: New tables will add with following credentials with addtional tables
    Given Add Cabin/Table page opened
    And Cabin ID is selected
      | add_cabin04_data_with_table |
    And Cabin name is generated
      | add_cabin04_data_with_table |
    And Select time slot
      | add_cabin04_data_with_table |
    And Select Time Interval
      | add_cabin04_data_with_table |
    And Fill Future booking and comments
      | add_cabin04_data_with_table |
    And Change status
    And Tables incremented from tables
      | add_cabin04_data_with_table |
    And Add Tables Name
      | add_cabin04_data_with_table |
    And Selecting KAM Master masterFlag
      | add_cabin04_data_with_table |
    And For each table tableName there is one master
      | add_cabin04_data_with_table |
    And Working days days will be daysFlag
      | add_cabin04_data_with_table |
    And Click on submit and verify message
    Then Message will be displayed as successMessage
      | add_cabin04_data_with_table |

  # ADD_CABIN06_WITH_WORKING_HOURS
  Scenario: Deleting Cabin
    Given Add Cabin/Table page opened
    When Cabin ID is selected
      | add_cabin05_deleting_cabin |
    And Click on Delete button
    Then Cabin should be removed and varify the message
      | add_cabin05_deleting_cabin |

  # ADD_CABIN07_WITHOUT_CABIN_NAME
  Scenario: New tables will add with following credentials with addtional tables, assignee and working days
    Given Add Cabin/Table page opened
    And Cabin ID is selected
      | add_cabin06_data_with_working_days |
    And Cabin name is generated
      | add_cabin06_data_with_working_days |
    And Select time slot
      | add_cabin06_data_with_working_days |
    And Select Time Interval
      | add_cabin06_data_with_working_days |
    And Fill Future booking and comments
      | add_cabin06_data_with_working_days |
    And Change status
    And Tables incremented from tables
      | add_cabin06_data_with_working_days |
    And Add Tables Name
      | add_cabin06_data_with_working_days |
    And Selecting KAM Master masterFlag
      | add_cabin06_data_with_working_days |
    And For each table tableName there is one master
      | add_cabin06_data_with_working_days |
    And Working days days will be daysFlag and change on working hours if there
      | add_cabin06_data_with_working_days |
    And Click on submit and verify message
    Then Message will be displayed as successMessage
      | add_cabin06_data_with_working_days |

  # ADD_CABIN08_WITHOUT_TIME_SLOT_INTERVAL
  Scenario: Add Cabin/Table without Required field as Cabin Name
    Given Add Cabin/Table page opened
    And Cabin ID is selected
      | add_cabin07_without_cabin_name |
    And Click on submit and verify message
    Then Message will be displayed as successMessage
      | add_cabin07_without_cabin_name |

  # ADD_CABIN08_WITHOUT_TABLE_NAMES
  Scenario: Add Cabin/Table without Required field as Time Slot/Interval
    Given Add Cabin/Table page opened
    And Cabin ID is selected
      | add_cabin08_without_time_slot_interval |
    And Cabin name is generated
      | add_cabin08_without_time_slot_interval |
    And Select time slot
      | add_cabin08_without_time_slot_interval |
    And Select Time Interval
      | add_cabin08_without_time_slot_interval |
    And Click on submit and verify message
    Then Message will be displayed as successMessage
      | add_cabin08_without_time_slot_interval |
