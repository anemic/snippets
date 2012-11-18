*********************** HomeBrew *********************** 
# install formula
install formula
       
# uninstall formula
remove formula
       
# fetch the newest version of Homebrew from GitHub using git(1)
update 

# show formulae that have an updated version available
outdated

# upgrade outdated brews
upgrade

# list all installed formulae
list   

# perform a substring search of formula names for text
# if text is surrounded with slashes, then it is  interpreted  as  a  regular expression
# if  no  search term is given, all available formula are displayed
search, -S text|/text/

# open Homebrew's own homepage in a browser
home

# open formula's homepage in a browser
home formula

# open a browser to the GitHub History page for formula formula
# to view formula history locally: brew log -p <formula>
info --github

# print the name and version that will be detected for URL
info URL

# remove  any  older  versions  from  the cellar, for all installed or specific formula
cleanup

