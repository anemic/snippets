# get rails 3 and deps
sudo gem install rails

# install mogoid db (a new nosql relational database)
sudo gem install mongoid --pre

# install mongo c extensions
sudo gem install bson_ext

# create devstar rails 3 app
rails new devstar

# add mongoid gems to Gemfile in newly created rails app
gem "mongoid", "2.0.0.beta.20"
gem "bson_ext", "1.1.5"

# create mogoid config files
rails generate mongoid:config

# create git repo and push up to github
git init
git add .
git commit -a

# add github as remote
git remote add origin git@github.com:anemic/devstar.git

# push master branch up to github
git push origin master

# create heroku configs 
# may be asked for heroku credentials if first time running this command
heroku create

# enter 

# push app up to heroku
git push heroku master

# create production db and run migrations on heroku
heroku rake db:migrate

# fire up my development server and start playing
rails server