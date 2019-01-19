# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.4.4

* System dependencies: Gemfile contains required dependencies. 

* Configuration: 
	- This is a Rails app in API mode, to provide data for the Election Preference application.

* Database creation:
	- Postgresql requires database creation, which is included in a custom rake task (below)

* Database initialization:
	- To create the database, migrate the tables, seed the database and start your local Rails server, please run: 
	`$ rake db:dcms`
	- see this task here: `app/lib/tasks/dcms.rake`

	- To do the same steps after deployment to Heroku, please run: 
	`$ rake db:hdcms` 
	- see this task here: `app/lib/tasks/hdcms.rake`

* How to run the test suite
	- Currently there is not a test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
