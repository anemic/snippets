# dowload toolbelt for your OS
# this installs heroku CLI, foreman, and git
https://toolbelt.heroku.com/

# login to heroku for the first time and upload ssh keys 
heroku login

# use ruby 1.9.3
rvm use ruby-1.9.3-p194

# set up new rails 3.2 app
rails new LinesOfRuby

# change "sqlite3" to "pg"
# gem 'sqlite3'
gem 'pg'

# install gems
bundle install

# set up heroku
heroku create

# set up git
git init
git add .
git commit -a

# deploy on heroku
git push heroku master

# check for running proccesses
heroku ps

# pull logs from heroku
heroku logs


# keep client up to date
heroku update

