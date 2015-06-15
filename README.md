# Hubiquity

##### Setup the project:

`git clone git@github.com:LSERRE/Hubiquity.git`

##### Install PostgreSQL as Database:

Download it [here](http://postgresapp.com/)

##### Edit bash_profile to add PostgreSQL in your PATH:

`open ~/.bash_profile`

##### Add this line in the file: 

`export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin`

##### Load the bash_profile:

`source ~/.bash_profile`

##### Create postgres role

Run PostegreSQL.app, you should be in a terminal window.

`CREATE ROLE hubiquity WITH LOGIN PASSWORD 'moulin12345';`

##### Install dependencies and run the rails server:

`bundle install`

`rails s`

Visit localhost:3000

##### Assets Pipeline:

We have remove the default Rails assets pipeline to use Gulp.
First install all gulp dependencies:

`npm install`

Then run gulp with watch task

`gulp watch`

It happens you have to rebuild node-sass lib:

`npm rebuild node-sass`

You must use the LiveReload extension. You can download it [here](https://chrome.google.com/webstore/detail/livereload/)

##### Deploy on Heroku

Once you have installed Heroku Toolbelt and you are logged with your Heroku account with 

`heroku login`

You can deploy automatically with 

`git push heroku master`

