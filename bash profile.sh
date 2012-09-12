# my bash profile or bashrc file

# Sets PATH
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# adds rvm to PATH
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

# adds MySQL to PATH
export PATH="/usr/local/mysql/bin:$PATH" 

# adds path to node.js
export PATH="/my/local/node/bin:$PATH" 

# adds Amazon's EC2 API Tools
export PATH="$HOME/.ec2/ec2-api-tools-1.6.1.3/bin:$PATH"

# set Java Home var
# JAVA_HOME for 10.8 (Mountain Lion)
export JAVA_HOME="/Library/Java/JavaVirtualMachines/1.6.0_32-b05-420.jdk/Contents/Home"

# set NODE_PATH
# export NODE_PATH="/my/local/node/lib/node"

# set TextMate as editor
export EDITOR="mate -w"

# set TextMate as git editor
export GIT_EDITOR="mate -w" 

# bash completion
11if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# RVM bash completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# add bash completion and bash command prompt support for git 
source ~/.git-completion.bash
source ~/.git-prompt.sh

# check for commits that are pending in your current git branch
parse_git_dirty() {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
 
# get current git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/$(parse_git_dirty)'
}

# setup prompt to show git branch and branch status
export PS1='\u \W$(__git_ps1 "(\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\])")$ '
# export PS1='⚡ \W$(__git_ps1 "[\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\]]")$ '
