/************************************* Commands *************************************/

# basic rails init
rails project_name -d mysql

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

# install all gems spesified in Rails::Initializer
rake gems:install

# unpack gem to vender/gems
rake gems:unpack GEM=hpricot 

# builds all gems in vender/gems
rake gems:build

/************************************** Config **************************************/

# Rotate Rails Log files
# Keeps 50 files of a maximum size of 5MB each
config.logger = Logger.new("#{RAILS_ROOT}/log/#{ENV['RAILS_ENV']}.log", 50, 5242880)

# Require a gem from a standard repo
config.gem "haml"

# Require a gem from a non-standard repo
config.gem "hpricot", :source => "http://code.whytheluckystiff.net"

# Require a gem that needs to require a file different than the gem's name
# I.e. if you normally load the gem with require 'aws/s3' instead of
# require 'aws-s3' then you would need to specify the :lib option
config.gem "aws-s3", :lib => "aws/s3"

/************************************** Helpers *************************************/

# removes any markup with gsub
@somevar = somestring.gsub(/<\/?[^>]*>/, "")

# You want an alphabetical sort, regardless of case.
# Use Array#sort_by. This is both the fastest and the shortest solution.
list.sort_by { |x| x.downcase } # => ["Albania", "anteater", "Zaire", "zorilla"]

/************************************** Models **************************************/

# use helpers in a model
"This category has #{ActionController::Base.helpers.pluralize(products.count, 'product')}."

/************************************ Controllers ***********************************/

# instead of saying return 404error you can use
@page = Page.find_by_permalink(params[:permalink])
raise ActiveRecord::RecordNotFound, "Page not found" if @page.nil?

# add helper methods to that are avalible in the view to controler methods, such as link_to
flash[:notice] = "Successfully created #{@template.link_to('product', @product)}."

# the best flash message helper there is!
Flash Message Conductor by Robby Russell
http://github.com/planetargon/flash-message-conductor/tree/master
# allows you to add flash messages by:
add_error my_error
add_notice my_notice
add_message my_message
# fliping sweet!

/************************************** Views ***************************************/

# use RedCloth for redering html
<%= textilize @page.content %>
# can use this insted of above if you are haveing problems with line breaks 
<%= RedCloth.new(@page.content).to_html %>

# open link in new window
<%= link_to "External link", "http://foo.bar", :target => "_blank" %>

# test field with default value that clears content when onfocus
<%= text_field_tag :q, "enter keywords...", :onfocus => "this.value=''"  %>

# loop through all flash messages at once (all messages and types, error, notice, etc)
<% flash.each do |key, msg| %>
  <%= content_tag :div, msg, :id => key %>
<% end %>

# debug any var
<%= debug @variable %>
<%= debug params %>

# access counter in partion for collection
<%= render :partial => "some_collection", :collection => @some_collection %> 
# in partial 
# some_collection_counter will start at 1 (starts at 0 in rails < 2.0, I think, not sure) and increments by one for every time rendered
<% some_collection_counter %>