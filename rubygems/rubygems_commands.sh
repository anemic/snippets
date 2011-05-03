# remove all installed gems
$ gem list | cut -d" " -f1 | xargs gem uninstall -aIx

# install mysql2
$ env ARCHFLAGS="-arch i386" gem install mysql2 -- --with-mysql-config=/usr/local/mysql/bin/mysql_config

# install postgres
$ sudo gem install postgres -- --with-pgsql-dir=/Library/PostgreSQL

# install pg
$ sudo gem install pg -- --with-pg-dir=/Library/PostgreSQL