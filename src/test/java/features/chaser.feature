Feature: Send chaser
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'
# this scenario sends a chaser post lba sent

  Scenario: Send LBA chaser

    Given path '/chase'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"ourReference":"189611/1637"}
    And request payload
    When method post
    Then status 200