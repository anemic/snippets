# http://justtalkaboutweb.com/2008/01/14/replace-prototype-with-jquery-on-rails/

# install plugin
ruby script/plugin install http://ennerchi.googlecode.com/svn/trunk/plugins/jrails

# copy over the jquery files for the javascript directiy in the jrails plugin
# include the files by adding to layout or page
<%= javascript_include_tag :defaults %>