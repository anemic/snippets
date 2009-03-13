# install rails 2.3
sudo gem install rails --source http://gems.rubyonrails.org

# gems and rails 2.x configurations

# in enviornment.rb or for specific environments 
Rails::Initializer.run do |config| 

  # Require the latest version of haml
  config.gem "haml"

  # Require a specific version of chronic
  config.gem "chronic", :version => '0.2.3'

  # Require a gem from a non-standard repo
  config.gem "hpricot", :source => "http://code.whytheluckystiff.net"

  # Require a gem that needs to require a file different than the gem's name
  # I.e. if you normally load the gem with require 'aws/s3' instead of
  # require 'aws-s3' then you would need to specify the :lib option
  config.gem "aws-s3", :lib => "aws/s3" 
end

# install all gems spesified in Rails::Initializer
rake gems:install

# unpack gem to vender/gems
rake gems:unpack GEM=hpricot 

# builds all gems in vender/gems
rake gems:build