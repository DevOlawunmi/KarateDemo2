@ignore
Feature: Submit Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Submit Full Instruction

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"IHGJJI90"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDate":"2020-12-01T00:00:00.000Z","policyholderTitle":"Miss","policyholderFirstName":"Sally","policyholderLastName":"James","outlayAmount":767,"liabilityDecision":"Non Fault","liabilityApportionment":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","addressLookupCountry":"GB","address":{"line1":"22 New Barn Street","town":"London","postcode":"E13 8JZ","readonly":true},"title":"Mr","firstName":"Taye","lastName":"Diggs","streetNumberOrBuildingName":"22","postalCode":"E13 8JZ","matched":true,"email":"rest@testt.com"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":true},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"IO9I8J","ripe":true},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"1 Piccadilly","town":"London","postcode":"W1J 7NT","readonly":true},"streetNumberOrBuildingName":"1","postalCode":"W1J 7NT","matched":true,"policyholderPhone":"867687","policyholderEmail":"sttrrt@email.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Lorem","accidentCircumstances":"YTUYW1J 7NTBearer eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJhdWQiOiJodHRwczpcL1wvYXBpLnBpbmdvbmUuZXUiLCJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJvcmciOiJkOTI4ZmY4OC1lZjQ4LTQyMWUtYjNkNy1hYjQzMGFkMTI1MzciLCJzY29wZSI6InBob25lIG9wZW5pZCBwcm9maWxlIGVtYWlsIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGgucGluZ29uZS5ldVwvYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwXC9hcyIsImV4cCI6MTYxMDQ0ODY0NCwiZW52IjoiYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwIiwiaWF0IjoxNjEwNDQ1MDQ0LCJjbGllbnRfaWQiOiJ"}}
    And request payload
    When method post
    Then status 200
