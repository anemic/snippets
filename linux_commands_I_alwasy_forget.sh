# updateing paths for that session only
export PATH=/opt/bin:$PATH
env PATH=/opt/bin:$PATH
# to update on permanently add to .login, .bashrc, .profile, or .bash_login

# basic insall from source
mkdir /tmp/optsources
cd /tmp/optsources
wget http://domain.com/path/file.tar.gz
tar -xvf file.tar.gz
cd file
./configure
# or i like to install added apps to /usr/local
./configure --prefix=/usr/local
make 
sudo make install



