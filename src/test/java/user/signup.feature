Feature: Post user https://api.demoblaze.com/signup
  Background:
    * url "https://api.demoblaze.com"
    * path "/signup"
  @SingUp
  Scenario Outline: Create user <idcase>
    When request
    """
    {
  "<username>": "<Vusername>",
  "<password>": "<Vpassword>",
    }
    """
    And method POST
    Then status <statuscode>
    And match response == <response>
    Examples:
      |idcase|id|username|Vusername   |password  |Vpassword|statuscode|response|
      |case 1|id|username|dario123456bravo   | password |dario123456bravo|200 |'""\n'       |
      |case 2|id|username|dario123bravo    | password |dario123bravo|200 |{"errorMessage":"This user already exist."}|
