# http://rspec.info/

/************************************* Install *************************************/
# install gems
sudo gem install rspec
sudo gem install rspec-rails

# Install an RSpec release >= 1.1.4 in Rails <= 2.1.0 (assumes you are starting in RAILS_ROOT dir)
cd vendor/plugins 
git clone git://github.com/dchelimsky/rspec.git
cd rspec
git checkout 1.1.8
cd ..
rm -rf rspec/.git
git clone git://github.com/dchelimsky/rspec-rails.git
cd rspec-rails
git checkout 1.1.8
cd ..
rm -rf rspec-rails/.git

# setup rails app for rspec
ruby script/generate rspec

# Install RSpec’s edge for rails >= 2.1.0
ruby script/plugin install git://github.com/dchelimsky/rspec.git
ruby script/plugin install git://github.com/dchelimsky/rspec-rails.git
ruby script/generate rspec

/*********************************** Generators ***********************************/