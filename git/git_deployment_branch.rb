# show all branches
$ git branch -a
* master
  remotes/origin/master

# create new branch
$ git branch deploy

# start makeing changes and commit them
# create remote branch
$ git remote add deploy git://example.com/users/joe/some_project.git

# check to see it was created
$ git branch -a
* deploy
  master
  remotes/deploy/master
  remotes/heroku/master
  remotes/origin/deploy
  remotes/origin/master


# push changes up to new branch
$ git push origin deploy

# deploy new branch
$ git push heroku

# switch back to maseter
$ git checkout master
