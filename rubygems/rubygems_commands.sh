# remove all installed gems
$ gem list | cut -d" " -f1 | xargs gem uninstall -aIx

