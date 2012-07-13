# Postgres and MySQL gem install for macosx with mysql compiled from source and postgres plus installed, milage may vary

# mysql
  # intel 
  sudo env ARCHFLAGS="-arch i386" gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config
  # ppc
  sudo env ARCHFLAGS="-arch ppc" gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config
  # or
  sudo gem install mysql -- --with-mysql-dir=/usr/local/mysql

# postgres
sudo env ARCHFLAGS="-arch i386" gem install postgres -- --with-pgsql-dir=/Library/PostgreSQL/8.4/



sudo env ARCHFLAGS="-arch i386" gem install mysql -v 2.7 -- --with-mysql-config=/usr/local/mysql/bin/mysql_config


# get around Library not loaded: libmysqlclient.18.dylib
sudo ln -s /usr/local/mysql/lib/libmysqlclient.18.dylib /usr/lib/libmysqlclient.18.dylib

gem install mysql2 -- --with-mysql-dir=/usr/local/mysql
