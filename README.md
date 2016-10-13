# README  
   
Ruby on Rails Employee Api with PostgreSQL.   
  
## Getting Started  
  
download this repository  
'bundle install'   
configure postgresql  
start postgres server, connect to database postgres  
create db employeedb_development  
create user employee_postgres  
'rake db:migrate'  

'rails s'  
  
## Tests  
  
'rails test'  
5 runs, 7 assertions, 0 failures, 0 errors, 0 skips  
  
## Send JSON POST Request  
  
http://localhost:3000/employees
<pre><code>
{  
  "employee": {  
    "employeeNumber": 1,  
    "lastName": "Smith",  
    "firstName": "John",  
    "extension": 2,  
    "email": "johnsmith@test.com",  
    "officeCode": 3,  
    "reportsTo": 4,  
    "jobTitle": "developer",  
    "photo": "john.jpg",  
    "api_key": null  
   }  
}  
</code></pre>
## Send GET Request (filtered, table column changes)
  
http://localhost:3000/employees
<pre><code>
{  
  "data": [  
    {  
      "id": "12345",  
      "type": "employees",  
      "attributes": {  
        "employee-number": 1,  
        "last-name": "Smith",  
        "first-name": "John",  
        "extension": 2,  
        "email": "johnsmith@test.com",  
        "office-code": 3,  
        "job-title": "developer",  
        "photo": "john.jpg"  
      }  
    }  
  ]  
}  
</code></pre>
## GET Name  
  
http://localhost:3000/employee/John  
  
## Routes  
  
'rake routes'