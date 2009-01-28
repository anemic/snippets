# Postgres and MySQL gem install for macosx with mysql compiled from source and postgres plus installed, milage may vary

# mysql
  # intel 
  sudo env ARCHFLAGS="-arch i386" gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config
  # ppc
  sudo env ARCHFLAGS="-arch ppc" gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config
  # or
  sudo gem install mysql -- --with-mysql-dir=/usr/local/mysql

# postgres
sudo gem install postgres -- --with-pgsql-dir=/Library/PostgresPlus/8.3/
