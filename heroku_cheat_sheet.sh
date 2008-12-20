# create app localy
heroku create example-app
# may be propted for username and password but after that will upload public ssh key
# authenticated by ssh keys after initial login (uploads ~/.ssh/id_rsa.pub)

# clone existing app for local development 
git clone git@heroku.com:example-app.git

# commit local changes and deploy remotely 
git push
# config/database.yml will be ignored so edit for local
# production uses postgresql but migrations and all is handled by heroku