# URLS:
# 	Home:
# 		http://rvm.beginrescueend.com/


# Quick Install:

$ bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )

# Place the folowing line at the end of your shell's loading files
# (.bashrc or .bash_profile for bash and .zshrc for zsh),
# after all PATH/variable settings:

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# open a new term session to load profile
# test install by running
$ type rvm | head -1 # should return "rvm is a function"


# Some basic usage

# install ruby 1.8.7 into rvm
$ rvm install 1.8.7 # installs patch 302: closest supported version
# switch to systems ruby version
$ rvm system 
# export all installed system gems
$ rvm gemset export system.gems
# switch back to rvm's 1.8.7 install
$ rvm 1.8.7 
# migrate your system gems to rvm 1.8.7 gems
$ rvm gemset import system 
# set default rvm to use newly installed rvm 1.8.7
$ rvm --default 1.8.7 

# Install so common RVMs 
$ rvm install ree,1.9.2-head,jruby # installs Ruby Enterprise Edition, Ruby 1.9.2-head, and JRuby (see rvm --help for detailed descriptions and options)