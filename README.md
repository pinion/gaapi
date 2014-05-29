gaapi
=====

Simple start for using API's with Rails scaffolding


API GET request:

http://localhost:3000/users.json

http://localhost:3000/user/1.json

API PUT to create a new user:

Send a POST command to "http://localhost:3000/users.json" with the following raw data: 

{
  "user": {
    "first_name": "first",
    "last_name": "last",
    "email": "first@last.com"
  }
}


using curl it will look like this:

curl -XPOST -H "Content-Type: application/json" "localhost:3000/users" -d 
'{
  "user": {
    "first_name": "first",
    "last_name": "last",
    "email": "first@last.com"
  }
}'


