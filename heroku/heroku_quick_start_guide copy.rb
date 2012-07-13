# dowload toolbelt for your OS
# this installs heroku CLI, foreman, and git
https://toolbelt.heroku.com/

# login to heroku for the first time and upload ssh keys 
heroku login

# add heroku support for rails app
cd ~/myapp
heroku create

# keep client up to date
heroku update






# install gem
sudo gem install heroku

# cd into your rails root then run
# you may be asked for your heroku credentials if first time running 
heroku create

# push master branch up to heroku for production deployment 
git push heroku master

# create and run migratins for production db
heroku rake db:migrate

# pull logs from heroku
heroku logs
