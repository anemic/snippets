# Configuration for rails app using jdbc MySQL drivers on Mac OS X but should work for other platforms just as well but have not tested.

# install
sudo jruby -S gem install activerecord-jdbc-adapter activerecord-jdbcmysql-adapter 

# add to database.yml 
development:
  adapter: jdbcmysql
  encoding: utf8
  database: testapp_development
  username: root
  password:

# add to environment.rb just bellow require File.join(File.dirname(__FILE__), 'boot')
# this may only be needed for earlier releases
if RUBY_PLATFORM =~ /java/
    require 'rubygems'
    RAILS_CONNECTION_ADAPTERS = %w(jdbc)
end

# migrate
jruby -S rake db:migrate

# start testapp with glassfish (requires glassfish gem 'sudo jruby -S gem install glassfish')
# use at your own risk should not be sudo but for some reason getting errors with out about domain dir not being writable so did the risky but easy fix
sudo jruby -S glassfish_rails testapp