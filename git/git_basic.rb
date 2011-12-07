# add github source
gem sources -a http://gems.github.com/

# Some basic git commands to git around ;)

# push branch to origin, creates branch on origin if does not exist 
git push origin <branch_name>

# this tracks the branch locally and remotely 
git branch --track < branch_name > origin/< branch_name >

# branches
git branch <branch_name>
git checkout <branch_name>

# remove unmerged branch
git branch -D <branch_name> 

# to work with files on remote branch checkout remote branch into local branch
$ git checkout -b <branch_name> <origin/branch_name>

# changes to the master are updated in the branch 
git rebase master 

# revert to before merge
git reset --hard ORIG_HEAD

# revert to remote head
git reset --hard HEAD^

# tagging
git tag -m "Finally, a stable version." v1.0.0

# create and apply patch in git
git diff SHA1 SHA1 > file.patch
git apply file.patch

# Removes files from git like git add 
git st | grep deleted | awk '{print $3}' | xargs -n1 git rm