Feature: Submit LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'
# this scenario sends a chaser post lba sent

  Scenario: Submit LBA Commercial PH

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"0RERRET5R","bacs":"ZAC"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","comfirmOutlayOver10K":false,"accidentDate":"2021-01-05T00:00:00.000Z","policyholderCommercialName":"First Group PLC","outlayAmount":8000,"liabilityDecision":"Dispute","liabilityApportionment":60},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Sir","firstName":"Dave ","lastName":"Att'gh"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Tesco Bank (ITB)","reference":"TRES5","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK68OBA","make":"VOLKSWAGEN","model":"T-ROC SEL TDI 4MOTION"}}}
    And request payload
    When method post
    Then status 200

    Scenario: Submit LBA Commercial TP

      Given path '/LBA'
      And header Content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"989CF88989","bacs":"Zeus"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDate":"2021-01-05T00:00:00.000Z","policyholderTitle":"Mrs","policyholderFirstName":"TestB","policyholderLastName":"PH","outlayAmount":3434,"liabilityDecision":"Non Fault","liabilityApportionment":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"commercial","thirdPartyCommercialName":"TestCommercial"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Zurich","reference":"8789O8","ripe":false},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK67BVN","make":"VAUXHALL","model":"ASTRA SRI TURBO"}}}
      And request payload
      When method post
      Then status 200

      Scenario: Submit LBA Commercial PH and TP

        Given path '/LBA'
        And header Content-type = 'application/json'
        And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
        * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"ASGi79o8o","bacs":"ZPC Vlocity"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","comfirmOutlayOver10K":false,"accidentDate":"2020-12-02T00:00:00.000Z","policyholderCommercialName":"Sainsbury's PLC","outlayAmount":5676,"liabilityDecision":"Non Fault","liabilityApportionment":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"commercial","thirdPartyCommercialName":"Tesco PLC"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Tesco Bank (ITB)","reference":"89P80","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VN66PKF","make":"NISSAN","model":"QASHQAI ACENTA DCI"}}}
        And request payload
        When method post
        Then status 200

        Scenario: Submit LBA, third party address known


