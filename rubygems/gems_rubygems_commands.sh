# rubygems

# add source
gem sources -a http://gems.github.com

# Updating rubygems from 1.2.0 to 1.3.0 or 1.3.1 if gem update --system returns nothing left to update and still stuck with 1.2.0
sudo gem install rubygems-update
sudo update_rubygems

# put this in the config file to insure the use of the latest RedCloth gem from Why
config.gem "RedCloth", :version => ">= 3.301", :source => "http://code.whytheluckystiff.net"

# unpack and build gems rails 2.x
config.gem "hpricot" # add to enviornment.rb
rake gems:unpack GEM=hpricot 
rake gems:build

# new syntax to install specific version of a gem
gem install rails -v 3.1.0

# install specific version of a gem
gem install --include-dependencies -v=2.1.0 rails

# Choose which version of rails to install
sudo gem install -v=2.1.0 rails

# output from gem help
RubyGems is a sophisticated package manager for Ruby.  This is a
basic help message containing pointers to more information.

  Usage:
    gem -h/--help
    gem -v/--version
    gem command [arguments...] [options...]

  Examples:
    gem install rake
    gem list --local
    gem build package.gemspec
    gem help install

  Further help:
    gem help commands            list all 'gem' commands
    gem help examples            show some examples of usage
    gem help platforms           show information about platforms
    gem help <COMMAND>           show help on COMMAND
                                   (e.g. 'gem help install')
  Further information:
    http://rubygems.rubyforge.org

# output for gem help commands
build             Build a gem from a gemspec
cert              Manage RubyGems certificates and signing settings
check             Check installed gems
cleanup           Clean up old versions of installed gems in the local
                  repository
contents          Display the contents of the installed gems
dependency        Show the dependencies of an installed gem
environment       Display information about the RubyGems environment
fetch             Download a gem and place it in the current directory
generate_index    Generates the index files for a gem server directory
help              Provide help on the 'gem' command
install           Install a gem into the local repository
list              Display gems whose name starts with STRING
lock              Generate a lockdown list of gems
mirror            Mirror a gem repository
outdated          Display all gems that need updates
pristine          Restores installed gems to pristine condition from files
                  located in the gem cache
query             Query gem information in local or remote repositories
rdoc              Generates RDoc for pre-installed gems
search            Display all gems whose name contains STRING
server            Documentation and gem repository HTTP server
sources           Manage the sources and cache file RubyGems uses to search
                  for gems
specification     Display gem specification (in yaml)
stale             List gems along with access times
uninstall         Uninstall gems from the local repository
unpack            Unpack an installed gem to the current directory
update            Update the named gems (or all installed gems) in the local
                  repository
which             Find the location of a library file you can require


