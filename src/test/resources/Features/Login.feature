Feature: test the login functionality
@runner
  Scenario: validate admin login
    Given the user navigates to the url
    When user enters a valid email and password
    And clicks on Login Button
    Then the user is logged in

  Scenario: validate admin login part2
    Given the user navigates to the url
    When user enters a valid email "Admin" and password "Hum@nhrm123"
    And clicks on Login Button
    Then the user is logged in

  Scenario: validate admin login part3
    Given the user navigates to the url
    When user enters a valid email "admin2" and password "troy"
    And clicks on Login Button
    Then the user is logged in


#------------------------------------------------------------------------------------------------------


  Scenario: validate invalid admin login when username is incorrect
    Given the user navigates to the url
    When user enters a username "GDGN" and password "Hum@nhrm123"
    And clicks on Login Button
    Then the user is not logged in


  Scenario: validate invalid admin login when password is incorrect
    Given the user navigates to the url
    When user enters a username "Admin" and password "abracadabra"
    And clicks on Login Button
    Then the user is not logged in

  Scenario: validate invalid admin login when password is empty and username is empty
    Given the user navigates to the url
    When user enters a username "" and password ""
    And clicks on Login Button
    Then the user is not logged in

  Scenario: validate invalid admin login when password is empty and username is Admin
    Given the user navigates to the url
    When user enters a username "Admin" and password ""
    And clicks on Login Button
    Then the user is not logged in
@runner1
    Scenario Outline: validate the wrong credentials error message
      When user enters the "<username>" and "<password>"
      And clicks on Login Button
      Then user see a message "<errorMsg>"
      Examples:
       |  username    |   password   |  errorMsg             |
       |  adminx      |   ssdad      | invalidCredentials    |
       |  admin2      |   abra       |  invalidCredentials   |
       |  admin3      |   cadbra     |  invalidCredentials   |












