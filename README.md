# Park Finder API

#### _Mock National Park Information API, 7.21.2017_

#### By _**Starlynne Start**_

## Description

_This API is designed to return information on national parks. It may be searched by all, name, location, or return a random[number] of records. Database seed creates parks using FFaker Space.star for names, FFaker CheesyLingo.paragraph for descriptions, and FFaker AddressUS.state for locations._

## Setup/Installation Requirements

_You will need Ruby/Rails and postgres to run this app locally._

* _Clone this repository_
* _Run command 'bundle install'_
* _Use command t to open a second terminal window, in that window run the command 'psql'_
* _Back in the original window, run command 'rake db:create db:migrate db:seed' (this will seed the database with 20 randomly generated 'parks')_
* _Run command 'rails serve'_

## Valid Request Parameters


To return all parks:

 http://localhost:3000/api/v1/parks

To return a single park by id:

 _http://localhost:3000/api/v1/parks/[id]_

To search for a park by name:

 _http://localhost:3000/api/v1/parks?name=[name]_

To return a number of random parks:

 _http://localhost:3000/api/v1/parks?random=[number]_


#### Assignment Parameters:

You have the freedom to build out your APIs as you wish. At the very least, your API should include the following:

* Endpoints for GET (all and by id), POST, PUT and DELETE.
* A RANDOM endpoint that randomly returns a park/business/animal.
* A second custom endpoint that accepts parameters (example: a SEARCH route that allows users to search by specific park names).
* Model scopes should be used to process parameters from API calls.
* At least one of the objectives from Monday's Further Exploration lesson (such as versioning, token authentication, or serialization).
* Thorough exception handling.
* Complete testing with request specs.
* Randomized data with Faker or your own custom seed code.
* A README that thoroughly documents all endpoints, including parameters that can be passed in.


## Known Bugs

_None_

## Support and contact details

_Comment, concerns or suggestions welcome! twyststardev@gmail.com_

## Technologies Used

_Ruby/Rails, ActiveRecord, FFaker, factory girl, rspec, active_model_serializers, rack-cors_

### License

*MIT*

Copyright (c) 2017 **_Starlynne Start_**
