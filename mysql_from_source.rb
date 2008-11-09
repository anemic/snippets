# This is a quick reference for instlaling MySQL on Mac OS X from source. 
# Taken from Hivelogic (http://hivelogic.com/articles/2007/11/installing-mysql-on-mac-os-x).

# remove previous installs 
sudo rm /usr/local/mysql
sudo rm -rf /Library/StartupItems/MySQLCOM/

# may have to remove previous launch daemon
sudo rm -rf /Library/LaunchDaemons/com.mysql* 

# set paths (this should be added to ~/.profile or ~/.bash_login which ever you use)
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH" 

# get and compile from source
cd ~/src
curl -O http://mysql.he.net/Downloads/MySQL-5.0/mysql-5.0.45.tar.gz # or current version from http://dev.mysql.com/downloads/mysql/5.0.html#source
tar xzvf mysql-5.0.45.tar.gz
cd mysql-5.0.45
CC=gcc CFLAGS="-O3 -fno-omit-frame-pointer" CXX=gcc CXXFLAGS="-O3 -fno-omit-frame-pointer -felide-constructors-fno-exceptions -fno-rtti" ./configure --prefix=/usr/local/mysql --with-extra-charsets=complex --enable-thread-safe-client --enable-local-infile --enable-shared
make 
sudo make install
cd /usr/local/mysql
sudo ./bin/mysql_install_db --user=mysql
sudo chown -R mysql ./var

# set MySQL to auto-start on startup
# create a new document in your favorite editor and insert 

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>KeepAlive</key>
    <true/>
    <key>Label</key>
    <string>com.mysql.mysqld</string>
    <key>Program</key>
    <string>/usr/local/mysql/bin/mysqld_safe</string>
    <key>RunAtLoad</key>
    <true/>
    <key>UserName</key>
    <string>mysql</string>
    <key>WorkingDirectory</key>
    <string>/usr/local/mysql</string>
</dict>
</plist>

# save as com.mysql.mysqld.plist to your desktop or where ever
sudo mv ~/Desktop/com.mysql.mysqld.plist /Library/LaunchDaemons
sudo chown root /Library/LaunchDaemons/com.mysql.mysqld.plist
sudo launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist

# install C bindings for ruby
# this greatly improves rails performance 
sudo env ARCHFLAGS="-arch i386" gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config

# to uninstall
cd ~/src/mysql-5.0.45
sudo make uninstall
sudo launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist
sudo rm /Library/LaunchDaemons/com.mysql.mysqld.plist