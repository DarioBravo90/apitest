Feature: Post user https://api.demoblaze.com/login
  Background:
    * url "https://api.demoblaze.com"
    * path "/login"
  @Login
  Scenario Outline: Login user <idcase>
    When request
    """
    {
  "<username>": "<Vusername>",
  "<password>": "<Vpassword>",
    }
    """
    And method POST
    Then status <statuscode>
    And match response contains <response>
    Examples:
      |idcase|username|Vusername   |password  |Vpassword|statuscode|response|
      |case 1|username|dario123bravo    | password |dario123bravo|200 |'Auth_token'       |
      |case 2|username|dariobravo    | password |1111111|200 |{"errorMessage":"User does not exist."}{"errorMessage":"Wrong password."}|
      |case 2|username|dario123bravo    | password |1111111|200 |{"errorMessage":"Wrong password."}|