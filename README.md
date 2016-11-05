# README

Freebie Tracker Network is currently a work-in-progress. It began as as basic Rails app partner project with @francisrocco during our Flatiron Web Development Immersive class. Now that the class is over, I've been building it out independently.

*Current bugs: Inconsistencies in Capybara and Selenium tests.

Log-in credentials:

 Business user email: me@chipotle.com, password: 1234;
 Regular user email: clay@gmail.com, password: 1234

* Ruby version 2.3.1
* Rails version 5.0
* PostgreSQL database
* Bootstrap.css front-end
* Current gems: bcrypt, pry, paperclip, rspec-rails, bootstrap-sass, sass-rails, pg, chartjs-ror, capybara, selenium web-driver, database-cleaner
* Access the deployed app: https://freebie-tracker-network-1.herokuapp.com/
* OR to access locally.....
     * To create the database: $ rake db:migrate
     * To seed the database: $ rake db:seed
     * Runs on localhost:3000
     * Rspec testing: $ rspec
     * Capybara and Selenium testing: need to seed test database $ rake RAILS_ENV=test db:seed



* Work completed so far:
  * Created database schemas for users (regular and business), brands, items, and join tables (users and items)
  * Created models with Active Record relationships and methods
  * Created Sessions Controller: users can create accounts and sign in/out
  * Created seed file
  * Created Rspec tests for models and session controller
  * Created Capybara and Selenium tests for integration
  * Edit view pages for users, items, businesses with Bootstrap and Materialize
  * Deployed to Heroku
  * Provide data visualization with Chart.js

* Work to be done:
  * AJAXify pages where users can add and edit items
  * Enable users to map out walking/driving route by integrating Google Maps API (requires new class for Location)
  * Wish List and Got It Lists
