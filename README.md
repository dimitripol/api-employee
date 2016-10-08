# README  
  
This README would normally document whatever steps are necessary to get the  
application up and running.  
  
Things you may want to cover:  
  
Ruby on Rails Employee Api with PostgreSQL.  
  
## Getting Started  
  
download this repository  
'bundle install'  
'figaro install'  

configure postgresql  
start postgres server, connect to database postgres  
create db employeedb_development  
create user employee_postgres  
run rake db:migrate  
  
'rails s'  
  
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