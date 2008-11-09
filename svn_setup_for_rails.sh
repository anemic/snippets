# Shell script to set up svn in a rails app, your milage may vary.

#!/bin/sh
svn remove log/*
svn commit -m"removing log files" 
svn propset svn:ignore "*.log" log/
svn update log/
svn commit -m 'Ignoring all files in /log/ ending in .log'
svn move config/database.yml config/database.example
svn commit -m 'Moving database.yml to database.example to provide a template for anyone who checks out the code'
svn propset svn:ignore "database.yml" config/
svn update config/
svn commit -m 'Ignoring database.yml'
svn remove tmp/*
svn propset svn:ignore "*" tmp/
svn update tmp/
svn commit -m "ignore tmp/ content from now" 
svn propset svn:ignore ".htaccess" config/
svn update config/
svn commit -m 'Ignoring .htaccess'
svn propset svn:ignore "dispatch.fcgi" config/
svn update config/
svn commit -m 'Ignoring dispatch.fcgi'