Feature: Registration

  # RegistrationPositiveTestCase01
  Scenario Outline: Form fill up
    Given User click Register Now
    When User in registration page
    And User enters company name <scenario_id>
    And User enters contact_person <scenario_id>
    And User enters E-mail Id <scenario_id>
    And User enters Login Name <scenario_id>
    And User enters mobile_num <scenario_id>
    And User selects company country <scenario_id>
    And User selects company state <scenario_id>
    And User selects company City <scenario_id>
    And User enters company zip <scenario_id>
    And user enters company street <scenario_id>
    And User enters Third party name <scenario_id>
    And User enters Third party email <scenario_id>
    And User Selects third_party_country <scenario_id>
    And User Selects Third_party_state <scenario_id>
    And User Selects Third_party_city <scenario_id>
    And User enters Third_party_Zip <scenario_id>
    And User enters Third_party_street <scenario_id>
    And User uploads a Identity proof photo <scenario_id>
    And User agrees terms and condition
    And User agrees Promotional letters
    And User clicks on submit
    Then User should be directed to registration success page

    Examples: 
      | scenario_id            |
      | registration01_success |

  # RegistrationNegativeValidationsTestCase02
  Scenario Outline: Validate All fields
    Given User click Register Now
    When User in registration page
    And User enters company name <scenario_id>
    And User Checks for the error message Company Name is required
    And User enters exiting company name <scenario_id>
    And User Checks for the error message Company name already exists
    And User enters contact_person <scenario_id>
    And User Checks for the error message Contact person Name is required
    And User enters E-mail Id <scenario_id>
    And User Checks for the error message Email Id is required
    And User enters invalid E-mail Id <scenario_id>
    And User Checks for the error message Invalid email id
    And User enters exiting E-mail Id <scenario_id>
    And User checks for the error message Email ID already exists
    And User enters Login Name <scenario_id>
    And User Checks for the error message Login name cannot be blank
    And User enters exiting Login Name <scenario_id>
    And User Checks the error message Login name already exists
    And User enters mobile_num <scenario_id>
    And User Checks for the error message Invalid mobile number
    And User selects company country <scenario_id>
    And User checks for country displayed in text box <scenario_id>
    And User selects company state <scenario_id>
    And User checks for state displayed in text box <scenario_id>
    And User selects company City <scenario_id>
    And User checks for city displayed in text box <scenario_id>
    And User enters null company zip <scenario_id>
    And User checks for the error message Zip cannot be blank
    And user enters company street <scenario_id>
    And User checks for the error message street name cannot be empty
    And User uploads a Identity proof photo <scenario_id>
    Then User Checks the error message File size cannot be larger than 2MB
    And kjbadkjbcskdbk
    Then nlajbdkjbcb
    Then alncjjdbcb
    And abcjbakjcbdkb

    Examples: 
      | scenario_id               |
      | registration02_validation |
