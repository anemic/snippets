# Question:
# I have a master and a dev branch, both pushed to github, I've cloned, pulled, 
# fetched, but I remain unable to get anything other than the master branch back.
# 
# I'm sure I'm missing something obvious, but I have RTM any I'm getting no joy at all.

# First, clone a remote git repository and cd into it:

$ git clone git://example.com/myproject
$ cd myproject

# Next, look at the local branches in your repository:

$ git branch
* master
# But there are other branches hiding in your repository! You can see these using the -a flag:

$ git branch -a
* master
  origin/HEAD
  origin/master
  origin/v1.0-stable
  origin/experimental
# If you just want to take a quick peek at an upstream branch, you can check it out directly:

$ git checkout origin/experimental
# But if you want to work on that branch, you'll need to create a local tracking branch:

$ git checkout -b experimental origin/experimental
# Now, if you look at your local branches, this is what you'll see:

$ git branch
  master
* experimental
# You can actually track more than one remote repository using git remote.

$ git remote add win32 git://example.com/users/joe/myproject-win32-port
$ git branch -a
* master
  origin/HEAD
  origin/master
  origin/v1.0-stable
  origin/experimental
  win32/master
  win32/new-widgets
# At this point, things are getting pretty crazy, so run gitk to see what's going on:

$ gitk --all &