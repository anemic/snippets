*********************** Git Rails Setup ***********************

# add github source
gem sources -a http://gems.github.com/

# this is a quick start for setting up a git repo in a rails project and working with a remote and local branch

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

# add remote
git remote add origin git@example.com:git_username/projectname.git

# push up to remote
git push origin master

# create branch for local dev
git branch my_name

# work in my branch
git co my_name

# pull in changes from master and apply to my branch
git co master
git pull origin master
git co my_name
git merge master

# merge in my changes into master when done
git co master
git merge my_name
git push origin master

# pull in changes
git pull origin branch_name