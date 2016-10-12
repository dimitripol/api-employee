# README  
   
Ruby on Rails Employee Api with PostgreSQL.   
  
## Getting Started  
  
download this repository  
'bundle install'   
configure postgresql  
start postgres server, connect to database postgres  
create db employeedb_development  
create user employee_postgres  
run rake db:migrate  
  
'rails s'  
  
## Tests  
  
'rails test'  
5 runs, 7 assertions, 0 failures, 0 errors, 0 skips  
  
## Send JSON Post Request  
  
http://localhost:3000/employees  
  
{  
  "employee": {  
    "employeeNumber": 1,  
    "lastName": "John",  
    "firstName": "Smith",  
    "extension": 2,  
    "email": "johnsmith@test.com",  
    "officeCode": 3,  
    "reportsTo": 4,  
    "jobTitle": "developer",  
    "photo": "john.jpg"  
   }  
}  
  
## Routes  
  
'rake routes'