# Quick start for building WebKit on mac os x and running Safari against the new build

cd ~/src
svn checkout http://svn.webkit.org/repository/webkit/trunk WebKit
WebKit/WebKitTools/Scripts/update-webkit
WebKit/WebKitTools/Scripts/build-webkit 
WebKit/WebKitTools/Scripts/run-safari

# It's handy to put WebKit/WebKitTools/Scripts in your shell path so you can type commands like build-webkit without specifying a full path
export PATH=/Users/<user>/src/WebKit/WebKitTools/Scripts:$PATH