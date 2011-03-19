Source:
  https://github.com/mxcl/homebrew/wiki/Gems%2C-Eggs-and-Perl-Modules
  
Gems, Eggs and Perl Modules (Rubygems without sudo:):

  # On a fresh OS X installation there are three empty directories:
    /Library/Ruby
    /Library/Python
    /Library/Perl
  # When you gem install, cpan -i or easy_install stuff gets installed to these directories in a nicely segregated fashion similar to Homebrew.
  # These directories start empty — you are meant to fill them with your stuff and not worry about it.
  # On fresh OS X installing to these three directories doesn’t require sudo.
  # So why was I using sudo?
  # Habit maybe?
  # One reason is executables go in /usr/local/bin. Usually this isn’t a writable location. But if you installed Homebrew as we recommend, /usr/local will be writable without sudo. So now you are good to install the development tools you need without risking a sudo.
  
  # Rubygems without sudo:
    # If you use RVM then you should ignore this stuff.
    # Ruby installs executables to ~/.gem/bin without sudo. This is non-ideal, so this section is about making it install to /usr/local instead.
    # We need to add 
      gem: -n/usr/local/bin to your ~/.gemrc. It’s YAML so do it manually or use this:
    ruby -C$HOME -ryaml -e "
    gemrc = YAML::load_file('.gemrc') rescue {}
    gemrc['gem'] = '-n/usr/local/bin'
    YAML::dump(gemrc, File.new('.gemrc', 'w'))"
    However all versions of RubyGems before 1.3.6 are buggy and ignore the above setting. Sadly a fresh install of Snow Leopard comes with 1.3.5. Currently the only known way to get round this is to upgrade rubygems as root:
    sudo gem update --system
    An Alternative
    Just install everything into the Homebrew prefix like this:
    echo "export GEM_HOME='$(brew --prefix)'" >> ~/.bashrc
    It doesn’t work! I get some “permissions” error when I try to install stuff!
    If you ever did a sudo gem, etc. before then a lot of files will have been created chown root. Fix with:
    sudo chown -R $USER /Library/Ruby /Library/Perl /Library/Python