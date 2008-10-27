/************************************* Subversion ************************************/ 


# remove svn control
find . -name .svn -exec rm -rf {} \;


/**************************************** Git ****************************************/ 


# create and apply patch in git
git diff SHA1 SHA1 > file.patch
git apply file.patch

# Removes files from git like git add 
git st | grep deleted | awk '{print $3}' | xargs -n1 git rm


/**************************************** Gems ***************************************/

# put this in the config file to insure the use of the latest RedCloth gem from Why
config.gem "RedCloth", :version => ">= 3.301", :source => "http://code.whytheluckystiff.net"


# unpack and build gems rails 2.x
config.gem "hpricot" # add to enviornment.rb
rake gems:unpack GEM=hpricot 
rake gems:build


# install specific version of a gem
gem install --include-dependencies -v=2.1.0 rails


# Choose which version of rails to install
sudo gem install -v=2.1.0 rails


/*************************************** Rails ***************************************/


# use RedCloth for redering html
<%= textilize @page.content %>
# can use this insted of above if you are haveing problems with line breaks 
<%= RedCloth.new(@page.content).to_html %>


# instead of saying return 404error you can use
@page = Page.find_by_permalink(params[:permalink])
raise ActiveRecord::RecordNotFound, "Page not found" if @page.nil?


# Rails - Git 
# Cloned rails git repo to /vendor with command 
git clone git://github.com/rails/rails.git

# This clones the master branch which may not be ideal for dev 
# to checkout specific releases go to http://github.com/rails/rails/tree/master  
# select the release you would like to use by selecting the tag then run command

git checkout v2.1.0_RC1 
rake rails:update


# Choose which version of rails to use
rails _2.1.0_ --version


# removes any markup with gsub
@somevar = somestring.gsub(/<\/?[^>]*>/, "")


# open link in new window
<%= link_to "External link", "http://foo.bar", :target => "_blank" %>


# test field with default value that clears content when onfocus
<%= text_field_tag :q, "enter keywords...", :onfocus => "this.value=''"  %>


# You want an alphabetical sort, regardless of case.
# Use Array#sort_by. This is both the fastest and the shortest solution.
list.sort_by { |x| x.downcase } # => ["Albania", "anteater", "Zaire", "zorilla"]


/*************************************** SQL *****************************************/

# SQL update
UPDATE `businesses` SET `status`='Partner' WHERE `status`='Unassigned';
UPDATE `businesses` SET `status`='Unassigned' WHERE `status`='Partner';