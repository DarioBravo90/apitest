
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
      |read('test.csv')|