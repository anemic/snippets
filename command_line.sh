# git sha1 of file
# drag file to terminal to get file path
$ openssl sha1 <FILE_PATH>

# create md5 checksum
$ md5 --help

# setup git branch display in command line
# put this in your ~/.bashrc or ~/.profile
source ~/.git-prompt.sh

# show git branch in your bash command prompt
PS1='\u \W$(__git_ps1 " (%s)")\$ '

# check for commits and display branch status in bash command prompt
parse_git_dirty() {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
 
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/$(parse_git_dirty)'
}
 
export PS1='⚡ \W$(__git_ps1 "[\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\]]")$ '

# my prompt from my .profile
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



