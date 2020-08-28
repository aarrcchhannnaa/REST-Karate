Feature: user Details

  Scenario: 01 get call test
    * def expectedResult = read('result.json')
    
    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    Then print '\nExpected Output : ', expectedResult
    And match response == expectedResult
    
 