# Homebrew URLs
URLs:
  Home:
    http://mxcl.github.com/homebrew/
  Installation:
    https://github.com/mxcl/homebrew/wiki/installation
  Project:
    https://github.com/mxcl/homebrew
  WiKi:
    https://github.com/mxcl/homebrew/wiki  
  Repo:
    https://github.com/mxcl/homebrew.git


# HomeBrew Caches
pwd:
  /Library/Caches/Homebrew/
  
# Hard reset on HomeBrew's git repo
# HomeBrew tracks of all versions with a git repo, it is how it installs and versions all installed apps and formulas
$ cd /usr/local
$ git reset --hard FETCH_HEAD


# Install log
Install log:
  gummo:~ anemic$ ruby -e "$(curl -fsSLk https://gist.github.com/raw/323731/install_homebrew.rb)"
  ==> This script will install:
  /usr/local/bin/brew
  /usr/local/Library/Formula/...
  /usr/local/Library/Homebrew/...
  ==> The following directories will be made group writable:
  /usr/local/.
  /usr/local/bin
  /usr/local/etc
  /usr/local/include
  /usr/local/lib
  /usr/local/lib/pkgconfig
  /usr/local/sbin
  /usr/local/share
  /usr/local/share/locale
  /usr/local/share/man
  /usr/local/share/man/man1
  /usr/local/share/info
  /usr/local/share/doc
  ==> The following directories will have their group set to staff:
  /usr/local/.
  /usr/local/bin
  /usr/local/etc
  /usr/local/include
  /usr/local/lib
  /usr/local/lib/pkgconfig
  /usr/local/sbin
  /usr/local/share
  /usr/local/share/locale
  /usr/local/share/man
  /usr/local/share/man/man1
  /usr/local/share/info
  /usr/local/share/doc

  Press enter to continue
  ==> /usr/bin/sudo /bin/chmod g+w /usr/local/. /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/lib/pkgconfig /usr/local/sbin /usr/local/share /usr/local/share/locale /usr/local/share/man /usr/local/share/man/man1 /usr/local/share/info /usr/local/share/doc
  Password:
  ==> /usr/bin/sudo /usr/bin/chgrp staff /usr/local/. /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/lib/pkgconfig /usr/local/sbin /usr/local/share /usr/local/share/locale /usr/local/share/man /usr/local/share/man/man1 /usr/local/share/info /usr/local/share/doc
  ==> Downloading and Installing Homebrew...
  ==> Installation successful!
  
  
  