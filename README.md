# Park API

This park API lists 50 national parks in the united states and some generic information about each.

Created by Sam Cook for Epicodus code school 8/23/19

## What to expect from Park API

This API will return:
* description - a description of the park
* directions - directions to the park
* name - the name of the park
* states - the state or states where this park is located
* website - the park's website

## Instructions
These instructions are for a Mac. I offer no help to anyone using any other system.

#### Download
1. Download this repository from https://github.com/Onionator/park_api.git
2. Open up a terminal, enter into the to the park_api directory and run `bundle install`.

#### Database
If you are a maniac who wants to reseed the database instead of using the current backup of the database skip to the "maniac only" area of the Instructions.
3. After bundling run `psql park_api_development < database_backup.sql`. If this gives you errors check to see if you are using postgreSQL for your database.
4. If you want to run tests then you will need a test database run `createdb -T park_api_development park_api_test` in terminal for future testing purposes or skip this step if tests don't concern you.
###### For the maniac only
* Go to https://developer.nps.gov/ and sign up for an API key. Then replace "[INSERT YOUR API KEY HERE]" on line 11 of park_api/db/seeds.rb with your API key.
* Type `rake db:seed` into the terminal and watch the seeding begin.

#### Create a user account
5. Go back to the terminal and run `rails server -p 3001` to run this program on localhost:3001.
6. Open up Chrome browser and type localhost:3001/users in the address bar.
7. Fill out the form to receive your 24 hour token.

#### Calling this API
These instructions are for a ruby on rails API call with authentication.
8. To call this API in your program you will need to include code like the follow to all parks

 <p>response = RestClient::Request.execute(
    method: :get,
    url: 'localhost:3001/parks/',
    headers: { Authorization: [YOUR TOKEN HERE] }
  )<p>

## Known Bugs
  * Currently a user must be created in postman with a post request at url `localhost:3001/users` params `email`, `password`, and `password_confirmation`
  * The token must be accessed through postman with a post request at url `localhost:3001/auth/login` and params `email` and `password`

## Technology Used
- Ruby 2.5.1
- Rails 5.1.2
- Json Web Token (JWT)
- PostgreSQL
- Bcrypt

## License
MIT

_Copyright (c) 2019 Sam Cook_
