# New Repo
# create local git repo
$ mkdir gitapp
$ cd gitapp
$ touch README
$ git init
$ git add .
$ git commit -a -m 'initial commit'
# copy .git to remote server
# on remote server
$ mkdir gitapp.git
$ cd gitapp.git
# copy local .git to remote gitapp.git directory 
# add remote to local git repo  
$ git remote add origin user@domain.com:path/gitapp.git
# or
$ git remote add origin http://domain.com/path/gitapp.git
# or 
$ git remote add origin /path/gitapp.git #when doing this make sure that .git/description contains the name of the repo and must be same on local and remote
# make some changes and test to see that you can push to the remote repo
$ git push origin master
# make sure you can pull and clone from remote
$ git pull origin master
$ git clone user@domain.com:path/gitapp.git

# Troubleshooting 
# if you get some weird error messages about branches, refs, etc try to clone from the remote then try to push and pull
