# install RVM
curl -L https://get.rvm.io | bash -s stable --ruby

# to automatically set ruby versions to use based on directory or by git repo
# create a .rvmrc in the root directory and place the following (modify as needed)
rvm use 1.9.2@railscasts --create

