Feature: Use Actions

  Scenario: Use Assert
    Given def name = 'Bob'
    And def val = 5
    Then assert name + val == 'Bob5'

  Scenario: Use Replace
    Given def text = 'My name is <name1>'
    And print text
    Then replace text.name1 = 'Archana'
    And print text

  Scenario: Use Set
    * def myName = { name: 'Archana' }
    And print 'Before Replace Name : ', myName
    * set myName.name = 'Mahajan'
    * match myName == { name : 'Mahajan' }
    And print 'After Replace Name  : ', myName

  Scenario: Use Remove
    * def name = { first_name : 'Archana', last_name: 'Mahajan' }
    * print "Before Remove Last Name : ", name
    * remove name.last_name
    * print "After Remove Last Name : ", name
