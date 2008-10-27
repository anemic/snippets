# Install RSpec plugin release >= 1.1.4 for Rails <= 2.1.0 

cd vendor/plugins
git clone git://github.com/dchelimsky/rspec.git
git clone git://github.com/dchelimsky/rspec-rails.git
cd rspec
git checkout 1.1.4
cd ../rspec-rails
git checkout 1.1.4
cd ..
rm -rf rspec/.git
rm -rf rspec-rails/.git
cd ../../
ruby script/generate rspec