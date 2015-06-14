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
