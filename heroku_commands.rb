/******************************************************* quick start *******************************************************/
sudo gem install heroku
rails myapp
cd myapp
git init
git add .
git commit -m "my new app"
heroku create
git push heroku master
heroku rake db:migrate

/********************************************************* database ********************************************************/
# create and run migratins for production db
heroku rake db:migrate

# pull the app's database into a local database
heroku db:pull

# push a local database into the app's remote database
heroku db:push

# heroku uses taps for importing and exportting to learn more about the taps gem see:
https://github.com/ricardochimal/taps

# show database status
heroku-postgresql pg:info [--db <DATABASE>]   

# delete all data in the specified database
heroku-postgresql pg:reset --db <DATABASE>

# set a database identifier to the DATABASE_URL
heroku-postgresql pg:promote --db <DATABASE>



/********************************************************* logging *********************************************************/
# fetch recent log output for debugging
heroku logs

# fetch cron log output
heroku logs:cron



/********************************************************* releases ********************************************************/
# list releases
heroku releases

# detailed info for a release
heroku releases:info <release>

# roll back to a prior release                   
heroku rollback [<release>]



/********************************************** basic application manipulation *********************************************/
# list your apps
heroku list

# you may be asked for your heroku credentials if first time running 
heroku create

# open the app in a web browser
heroku open

# restart app servers
heroku restart

# push master branch up to heroku for production deployment 
git push heroku master

# rename the app
heroku rename <newname>

# remotely execute a single console command
heroku console <command>

# start an interactive console to the remote app
heroku console









