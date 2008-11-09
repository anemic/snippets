# rubygems

# put this in the config file to insure the use of the latest RedCloth gem from Why
config.gem "RedCloth", :version => ">= 3.301", :source => "http://code.whytheluckystiff.net"

# unpack and build gems rails 2.x
config.gem "hpricot" # add to enviornment.rb
rake gems:unpack GEM=hpricot 
rake gems:build

# install specific version of a gem
gem install --include-dependencies -v=2.1.0 rails

# Choose which version of rails to install
sudo gem install -v=2.1.0 rails