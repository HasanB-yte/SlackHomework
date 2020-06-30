Feature:Slack POST, GET and UI post and delete and verification functions
  #  1
  Scenario: Create a message with POST method
    When the user creates a message on Slack with Post method
    Then the user verifies the message with get method
    #2
  Scenario: post and validate on UI
    When the user sends a message to slack via POST request
    Then the user verifies the message with Selenium Webdriver in UI
    #3
  Scenario: ui send and verify
    When the user sends message to slack with Selenium Webdriver in UI
    Then the user verifies the message with Selenium Webdriver in UI
    #4
  Scenario: post ui and verify with get method
    When the user sends message to slack with Selenium Webdriver in UI
    Then the user verifies the message with get method
    #  5
  Scenario:Api layer delete and verify
    When the user creates a message on Slack with Post method
    When the deletes message from slack via POST request
    Then the user verifies the message is gone via GET request
  #  6
  Scenario: deletion and validation of different layers
    When the user creates a message with Post method
    Then the deletes message via POST request
    Then Verify the message is gone via Selenium Webdriver in UI
