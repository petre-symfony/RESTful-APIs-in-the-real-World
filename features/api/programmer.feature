Feature: Programmer
  In order to battle projects
  As an API client
  I need to be able to create programmers and power them up

  Background:
    Given the user "weaverryan" exists

  Scenario: Create a programmer
    Given I have the payload:
      """
        {
          "nickname": "ObjectOrienter",
          "avatarNumber": "2",
          "tagLine": "I'm from a test!"
        }
      """
    When I request "POST /api/programmers"
    Then the response status code should be 201
    And the "Location" header should be "/api/programmers/ObjectOrienter"
    And the "nickname" property should equal "ObjectOrienter"

  Scenario: GET one programmer
    Given the following programmers exist:
      | nickname    | avatarNumber |
      | UnitTester  | 3            |
    When I request "GET /api/programmers/UnitTester"
    Then the response status code should be 200
    And the following properties should exist:
      """
      nickname
      avatarNumber
      powerLevel
      tagLine
      """
    And the "nickname" property should equal "UnitTester"  