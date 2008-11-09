/************************************* Subversion ************************************/ 


# remove svn control
find . -name .svn -exec rm -rf {} \;


/**************************************** Git ****************************************/ 


# create and apply patch in git
git diff SHA1 SHA1 > file.patch
git apply file.patch

# Removes files from git like git add 
git st | grep deleted | awk '{print $3}' | xargs -n1 git rm


/*************************************** SQL *****************************************/

# SQL update
UPDATE `businesses` SET `status`='Partner' WHERE `status`='Unassigned';
UPDATE `businesses` SET `status`='Unassigned' WHERE `status`='Partner';