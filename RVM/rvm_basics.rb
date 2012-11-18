*********************** RVM *********************** 

# install stable RVM branch
$ curl -L https://get.rvm.io | bash -s stable --ruby

# install latest development branch
$ curl -L https://get.rvm.io | bash

# install system wide
$ curl -L https://get.rvm.io | sudo bash -s stable


# to update to the most stable version
$ rvm get stable

# update to the latest repository source version (the most bugfixes)
$ rvm get head


# to automatically set ruby versions to use based on directory or by git repo
# create a .rvmrc in the root directory and place the following (modify as needed)
$ rvm use 1.9.2@railscasts --create

