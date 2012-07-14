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

# check app out online
heroku open

# keep client up to date
heroku update

# to switch from webrick to thin for production

# add this to Gemfile
gem 'thin'

# run 
bundle install

# Change the command used to launch your web process by creating a file called Procfile and entering this:
web: bundle exec rails server thin -p $PORT -e $RACK_ENV

# Set the RACK_ENV to development in your environment
$ echo "RACK_ENV=development" >>.env

# Test your Procfile locally using Foreman
$ foreman start

# Looks good, so press Ctrl-C to exit. Deploy your changes to Heroku:
$ git add .
$ git commit -m "use thin via procfile"
$ git push heroku

# Check ps, you’ll see the web process uses your new command specifying Thin as the webserver:
$ heroku ps

# The logs also reflect that we are now using Thin:
$ heroku logs