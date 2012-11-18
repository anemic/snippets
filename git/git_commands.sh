*********************** Git Commands ***********************

# add github source
gem sources -a http://gems.github.com/

# Some basic git commands to git around ;)

# push branch to origin, creates branch on origin if does not exist 
git push origin <branch_name>

# this tracks the branch locally and remotely 
git branch --track branch_name origin/branch_name

# branches
git branch branch_name
git checkout branch_name

# to work with files on remote branch checkout remote branch into local branch
$ git checkout -b experimental origin/experimental

# remove unmerged branch
git branch -D branch_name

# completely remove a file from all revisions
git filter-branch --index-filter 'git update-index --remove filename' HEAD
git commit -a
git push

# remove remote branch
git push origin :branch_name # must remove localy first 

# changes to the master are updated in the branch 
# see http://github.com/guides/changing-a-series-of-commits-or-patches for examples
git rebase master # from your branch you want to apply the changes from

# add changes interactivly like choose hunks or files 
# very cool
git add --interactive
git add --i
# or
git add --patch
git add -p 

# revert to before merge
git reset --hard ORIG_HEAD

# revert to remote head
git reset --hard HEAD^

# to revert changes to before merge
git reset --hard ORIG_HEAD

# tagging
git tag -m "Finally, a stable version." v1.0.0
# or
git tag -a -m "tagging version 1.0" 1.0
# to push tag up to remote 
git push --tags

# create and apply patch in git
git diff SHA1 SHA1 > file.patch
git apply file.patch

# Removes files from git like git add 
git st | grep deleted | awk '{print $3}' | xargs -n1 git rm

# checks out version from 10 minutes ago
git checkout "@{10 minutes ago}" .

# changes to the master are updated in the branch 
# this is sooooo cool
git rebase master

# rebase interacive, new 
# apply paches interactivly to master 
git rebase --interactive

# git's garage collector 
git gc

# git submodules 
# adding Rails as a submodule
git submodule add git://github.com/rails/rails.git vendor/rails

# register submodule using `init`.
git submodule init

# update all submodules
git submodule update

# add another remote to repository 
git remote add remote_name git://domain.com/path/repo.git
# in refferences .git/config
[remote "remote_name"]
    url = git://domain.com/path/repo.git
    fetch = +refs/heads/*:refs/remotes/remote_name/*