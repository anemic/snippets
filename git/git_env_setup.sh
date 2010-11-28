# Git system setup

git config --global user.name "Name"
git config --global user.email "email"
git config --global color.status auto
git config --global color.diff auto 
git config --global color.branch auto
git config --global merge.tool opendiff
git config --global apply.whitespace nowarn

git config --global core.editor "mate -w"

# aliases checkout with co
# example: git co master
git config --global alias.co checkout

git config --global core.excludesfile ~/.gitignore
echo ".DS_Store" >> ~/.gitignore

# change fonts to for better readability on mac os x
# edit ~/.gitk 
set mainfont {Monaco 10}
set textfont {Monaco 10}
set uifont {Monaco 10}

# the first line uses TextMate as the message editor insead of vi the default which I wish I knew but sadly do not :(
# reset sets up aliases for less typing in the command line :)
# put in ~/.profile or ~/.bash_login, what ever you use to set your env vars on login
export GIT_EDITOR="mate -w"   
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'

# this is what my ~/.gitconfig looks like after all this
[user]
	name = anemic
	email = anemic@example.com
[alias]
	co = checkout
[apply]
	whitespace = nowarn
[color]
	status = auto
	diff = auto
	branch = auto
[merge]
	tool = opendiff
[core]
	excludesfile = /Users/anemic/.gitignore

# this is what my ~/.gitk look like after all this
set mainfont {Monaco 10}
set textfont {Monaco 10}
set uifont {Monaco 10 bold}
set tabstop 8
set findmergefiles 0
set maxgraphpct 50
set maxwidth 16
set cmitmode patch
set wrapcomment none
set autoselect 1
set showneartags 1
set showlocalchanges 1
set datetimeformat {%Y-%m-%d %H:%M:%S}
set limitdiffs 1
set bgcolor white
set fgcolor black
set colors {green red blue magenta darkgrey brown orange}
set diffcolors {red "#00a000" blue}
set diffcontext 3
set selectbgcolor gray85
set extdifftool meld
set geometry(main) 794x484+5+45
set geometry(topwidth) 790
set geometry(topheight) 150
set geometry(pwsash0) "280 2"
set geometry(pwsash1) "420 2"
set geometry(botwidth) 350
set geometry(botheight) 314
set permviews {}