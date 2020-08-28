Feature: Use Assert

  Scenario: Use match==
    Given def name = 'Archana'
    Then match name == 'Archana'

  Scenario: Use match!=
    Given def name = 'Archana'
    Then match name != 'Mahajan'

  Scenario: Use match contains
    Given def name = { 'fname' : 'Archana','lname' : 'Mahajan' }
    Then match name contains { 'fname' : 'Archana' }

  Scenario: Use match contains only
    * def data = { num: [1, 2, 3] }
    * match data.num contains 1
    * match data.num contains [2]
    * match data.num contains [3, 2]
    * match data.num contains only [3, 2, 1]
    * match data.num contains only [2, 3, 1]

  Scenario: Use match contains any
    * def data = { num: [1, 2, 3] }
    * match data.num contains any[10,2,5]
    #* match data.num contains any[10,4,5]
    