# get around Library not loaded: libmysqlclient.18.dylib
sudo ln -s /usr/local/mysql/lib/libmysqlclient.18.dylib /usr/lib/libmysqlclient.18.dylib

gem install mysql2 -- --with-mysql-dir=/usr/local/mysql