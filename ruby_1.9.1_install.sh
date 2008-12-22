# install ruby 1.9.1 along side 1.8.6 on Leopard (10.5)

# download ruby-1.9.1-preview1 and zip in dir of your choice
cd ruby-1.9.1-preview1
./configure --prefix=/usr/local/ruby-1.9.1
make
sudo make install

# add following to ~/.bash_login or ~/.profile (what ever you use to set your env) 
# make sure to put at top so gets loaded before your default installation of ruby 
export PATH=/usr/local/ruby-1.9.1/bin:/Users/<user_name>/.gem/ruby/1.9.1/bin:$PATH
# replace <user_name> with your user name
# load up your env vars and your done (source ~/.bash_login)
# comment out to switch back to your default install

# Note: you will have to reinstall desired gems as gems are specific to the version of ruby
