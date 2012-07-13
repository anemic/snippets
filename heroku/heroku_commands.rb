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



/********************************************************* backups *********************************************************/
# pgbackups

# The Heroku PGBackups add-on lets you easily capture and manage backups for your shared and dedicated Heroku PostgreSQL databases.
# install add-on pgbackups for backing up, exporting, and importing PostgreSQL
heroku addons:add pgbackups

# capture a backup of your primary database
heroku pgbackups:capture

# specify HEROKU_POSTGRESQL_URL for multiple databases
heroku pgbackups:capture HEROKU_POSTGRESQL_URL

# automatically delete your oldest backup when capturing a new one
heroku pgbackups:capture --expire

# summary list of all your backups
heroku pgbackups

# for migrating or exporting your database
# create a publicly accessible URL for backups, which is available for 10 minutes
heroku pgbackups:url b004

# delete a backup
heroku pgbackups:destroy b003

# restore a backup into a database 
heroku pgbackups:restore b007

# if you have an existing PostgreSQL database you’d like to export from elsewhere use pg_dump tool to dump it in compressed format
PGPASSWORD=mypassword pg_dump -Fc --no-acl --no-owner -h myhost -U myuser mydb > mydb.dump

# upload it somewhere with an HTTP accessible URL
# Amazon S3 and S3Fox (http://www.s3fox.net/) are recommend 
# create the file with private access and create a temporary authorized URL for the Heroku import then cut and paste that URL into your restore command
heroku pgbackups:restore 'http://s3.amazonaws.com/.....mydb.dump?authparameters'

# if you’d like to move your database out of the Heroku PostgreSQL service, 
# take a backup and then download it using a variety of tools such as curl, wget, or a web browse 
# for example (backup URLs will expire 10 minutes after they are issued)
curl -o latest.dump `heroku pgbackups:url`

# you can then load this dump into your local database using the pg_restore tool, 
# just as Heroku does when you initiate a restore
pg_restore --verbose --clean --no-acl --no-owner -h myhost -U myuser -d mydb latest.dump

# you can use pgbackups to transfer data from one app to another, 
# say from your production app to your staging app
# to do this, capture a backup on the primary app, then import that backup into the secondary app
heroku pgbackups:capture --app myapp
heroku pgbackups:restore `heroku pgbackups:url --app myapp` --app myapp-staging




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









