# remove all installed gems
$ gem list | cut -d" " -f1 | xargs gem uninstall -aIx

# install mysql2
$ sudo env ARCHFLAGS="-arch x86_64" gem install mysql2 -- --with-mysql-dir=/usr/local/mysql --with-mysql-lib=/usr/local/mysql/lib --with-mysql-include=/usr/local/mysql/include
# $ env ARCHFLAGS="-arch i386" gem install mysql2 -- --with-mysql-config=/usr/local/mysql/bin/mysql_config

# if mysql2 fails try removeing 32 bit MySQL if needed to install 64 bit MySQL
sudo rm /usr/local/mysql
sudo rm -rf /usr/local/mysql*
sudo rm -rf /Library/StartupItems/MySQLCOM
sudo rm -rf /Library/PreferencePanes/My*

edit /etc/hostconfig and remove the line MYSQLCOM=-YES-

sudo rm -rf /Library/Receipts/mysql*
sudo rm -rf /Library/Receipts/MySQL*

# install postgres
$ sudo gem install postgres -- --with-pgsql-dir=/Library/PostgreSQL

# install pg
$ sudo gem install pg -- --with-pg-dir=/Library/PostgreSQL