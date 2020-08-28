Feature: Testing website

  Scenario: Get list of all user and verify total user available is userCount[12]
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then match response.total == 12
    And print 'Total users Count : ', response.total

  Scenario: Update details of any user on the basis of his/her id
    Given url 'https://reqres.in/api/users/2'
    When request {"name": "Archana","job": "Mahajan"}
    And method put
    Then print 'Response : ', response

  Scenario: Create new user and verify the details of created user
    Given url 'https://reqres.in/api/users'
    When request {"name": "Archana","job": "Mahajan"}
    And method post
    And print 'Response : ', response

  Scenario: Delete the user and verify that status code is correct and user has been deleted
    Given url 'https://reqres.in/api/users/2'
    When method delete
    Then status 204


  Scenario: Get details of users whose first_name=Michael
    Given url 'https://reqres.in/api/users?page=2'
    And method get
    * def data = response.data
    * def myfunc =
      """
      	function(arg){ 
       	for(i=0;i<arg.length;i++)
       	{
       		if((arg[i].first_name)=="Michael")
       		{	
       			return (arg[i]) 
       		}
       	}
      	}
      """
    * def returnedData = call myfunc data
    And print 'Details Of Michael : ', returnedData
  
  
  
 
