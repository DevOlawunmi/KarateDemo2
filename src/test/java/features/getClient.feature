Feature: Get client

  Background:
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

  Scenario: Get client (Zurich)
    Given path '/client'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    When method get
    Then status 200

  Scenario: Get client (LV)
    Given path '/client'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '79f632d66ad44b45951e2597c855f490'
    When method get
    Then status 200
