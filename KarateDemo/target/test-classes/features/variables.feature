Feature: Use Variables

  Scenario: Use def variable
    Given def firstVar = 'Archana'
    Then print '\nFirst Name : ', firstVar
    * def secondVar = 'Mahajan'
    Then print '\nLast Name  : ', secondVar

  Scenario: Use text variable
    Given text name =
      """
      Archana
      mahajan
      """
    Then print "\nName : ", name

  Scenario: Use string variable
    Given string name = 'Archana Mahajan'
    Then print "\nName : ", name
