# URLS:
# 	Home:
# 		http://rvm.beginrescueend.com/


# Quick Install:

$ bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )

# Place the folowing line at the end of your shell's loading files
# (.bashrc or .bash_profile for bash and .zshrc for zsh),
# after all PATH/variable settings:

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# add this after the above to get bash completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

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

# show RVM notes
$ rvm notes

# Install some common RVMs 
$ rvm install ree,1.9.2-head,jruby # installs Ruby Enterprise Edition, Ruby 1.9.2-head, and JRuby (see rvm --help for detailed descriptions and options)

# display all info for currently active profile
$ rvm info 

# display ALL info for currently active profile
$ rvm debug

# list installed RVMs
$ rvm list

# show all known RVMs
$ rvm list known

# update
$ rvm get head

# reset to pre-RVM state
$ rvm reset

# remove the rvm installation completely (carefull with that pupy)
$ rvm implode


# Add Some TextMate Support

# This approach makes it possible to have the ruby switched on a per-project basis without any extra work. 
# With rvm installed, this is a matter of taking the full path to rvm-auto-ruby, found via:
$ which rvm-auto-ruby
# add the path given to TM_RUBY variable in TextMate preferences -> advanced -> shell variables


