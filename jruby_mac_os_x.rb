# download latest code from http://dist.codehaus.org/jruby/
# add to path (in ~/.profile or ~/.bash_login)
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

# extract source and cd into extracted directory
cd jruby*
# build 
ant

# copy folder to /usr/local/jruby
cd ..
sudo cp -r jruby* /usr/local/jruby

# add jruby bin to path (in ~/.profile or ~/.bash_login)
export PATH=/usr/local/jruby/bin:$PATH

# install rails
sudo jruby -S gem install rails

# install rake
sudo jruby -S gem install rake

# kept getting a warning to install so installed openssl
sudo jruby -S gem install jruby-openssl

# install mysql support
sudo jruby -S gem install activerecord-jdbc-adapter  activerecord-jdbcmysql-adapter

# play around
jruby -S rails testapp

# database connection settings 
development:
  adapter: jdbc
  driver: com.mysql.jdbc.Driver
  url: jdbc:mysql://localhost/testapp_development
  username: root
  password:

# simple table creation 
jruby script/generate migration CreateWidgetsTable
# add collumns to the migration

# run migration 
jruby -S rake db:migrate