# Jay's Animal Aid API, Version 1
### This API provides information on the cats and dogs at Jay's Animal Aid, the local animal shelter in Portland, OR
### Steven Galvin, July 21st, 2017
With this API, users have the ability to pull information regarding the animals at Jay's Animal Aid. The names, breeds, ages, likes, dislikes, and pictures of the cats and dogs here are all accessible for users to use however they want.

## User Stories

  * Endpoints for GET (all and by id), POST, PUT and DELETE.
  * A RANDOM endpoint that randomly returns an animal.
  * A SEARCH endpoint that accepts age and breed parameters

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Node.js](https://nodejs.org/) (with NPM)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [Postgres](https://www.learnhowtoprogram.com/ruby/ruby-database-basics/installing-postgres-7fb0cff7-a0f5-4b61-a0db-8a928b9f67ef) (here's a good lesson online for setting it up)

## Installation

As of writing this README, these instructions work on MacOS.

* Run `$ git clone <this-repository-url>`
* Then `$ cd jays-animal-aid`
* Once in the jays-animal-aid folder, run `bundle install` to install gems, `$ rails db:setup` to setup the database, and `$ rails s` to run the server. Then visit http://localhost:3000/ to view the app.

## Routes

#### Show All Animals
##### GET `http://localhost:3000/animals`
Returns all animals.

#### Show Single Animal
##### GET `http://localhost:3000/animals/{id}`
Returns the animal matching the id.

#### Create Animal
##### POST `http://localhost:3000/animals?name={name}&species={species}&breed={breed}&age={age}`
Creates a new animal.

#### Update Animal
##### PATCH or PUT `http://localhost:3000/animals/{id}?{params}`
Updates specified animal.

#### Destroy Animal
##### DELETE `http://localhost:3000/animals/{id}`
Deletes specified animal.

#### Random
##### GET `http://localhost:3000/random`
Returns a random animal.

#### Search by Age
##### GET `http://localhost:3000/search?age={params}`
Returns all animals with the given age.

#### Search by Breed
##### GET `http://localhost:3000/search?breed={params}`
Returns all animals with the given breed.

## Technologies Used

* Ruby ~> 2.4.1
* Rails ~> 5.1
* ActiveRecord
* Postgres
* Bundler
* HTML
* FactoryGirl
* Faker Gem

## Authors

Steven Galvin

## License

MIT License

Copyright (c) Steven Galvin, 2017

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
