# initialize the repo
git init

# set the email used for the repo (may use different emails for diffrent jobs and for play, like me :)
git config user.email user@exmaple.com

# create .gitignore 
touch .gitignore

# add to .gitignore
.DS_Store
log/*.log
log/*.pid
tmp/**/*
config/database.yml
db/*.sqlite3
Capfile

# add all tracked files to repo
git add .

# initial commit
git commit -a -m "initial import of project"