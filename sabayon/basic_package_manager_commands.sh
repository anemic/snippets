# Entropy is the name of the Sabayon Linux binary package management system. 
# This is the name for the complete infrastructure, composed by 
# Equo client (textual), Sulfur client (graphical), Reagent and Activator server applications.

# sabayon is an overlay in gentoo so at the heart of sabayon is portage
# /etc/portage/package.use - use flags for specific packages eg. dev-util/git bash-completion curl -perl gtk -cgi  
# /etc/portage/package.keywords - spesify stable or unstable packages eg. app-admin/equo ~amd64
# /etc/portage/package.mask - specify packages that maybreak the system 
# /etc/portage/package.unmask - specify packages that maybreak the system 


# /etc/portage/  patage use flags - /

emerge --sync && layman -S # sync packages with portage and update all overlays (in this case sabayon)
layman --sync sabayon # syncs only sabayon

equo update # Update the Equo Database
equo install openssh # update the database to the latest version and installs openssh

# I am comfortable in emerge and gentoo. While sabayon is just a gentoo overlay,
# sulfur, equo, and emerge may return diffrent updates and ebuilds, so as a rule of thumb, 
# I try sulfur first then equo and then emerge to install packages depending on the package
# for simple packages and tools I just emerge them (such as git, subversion, etc.) but for
# more system dependent tools (such as gcc, eix etc.) I use sulfur and equo

# install some ebuild
emerge -pv some_package

# uses X for that one emerge only (to add permanently add to /etc/portage/package.use)
USE=X emerge openssh

# install ebuild but do not store in world
emerge --oneshot git

emege -upD world # updates all packages in world as well as all dependencies

emege -up system # updates all packages in system


# fix missing, broken, or unneeded dependencies 
revdep-rebuild



# need to do some research on this tool, not sure what to use it for yet
portageq 

# eix
# Eix uses a cache which must be updated before eix will reflect any changes to the package tree
eix-update

# Eix provides a handy command that will run an emerge --sync and then update the eix cache
eix-sync

eix -C app-portage emer # search for package within a given category

eix -I git # search for only installed packages

eix -S description # search packages description

# Eix also has the handy ability to search for packages in a selection of overlays without having those overlays installed.
eix-remote update # update the remote overlay cache
# Now search for packages as normal and you'll also see items from the selection of overlays listed
# The overlay where the package or specific version is available will be denoted with a number in brackets



