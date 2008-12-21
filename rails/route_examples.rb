# for full list and explanations see http://guides.rubyonrails.org/routing_outside_in.html

# named route
map.login '/login', :controller => 'sessions', :action => 'new'

# RESTful routes
map.resources :blogs
# or for no index
map.resource  :session

# namespace 
map.namespace :admin do |admin|
  admin.resources :users
  admin.resources :blogs
end

# nested resources 
map.resources :blogs do |blog|
  blog.resources :comments
end

# Members and collections are the same other than :member works on a single resource, while :collection works on multiple
# ex. /blogs/delete_all (collection) /blogs/1/invite (member)
# adding actions and map to request type
map.resources :blogs, :collection => { :delete_all => :put }

# adding RESTful actions and request types 
map.resources :blogs, :member => {:invite => :any}
# or can specify an array of request types 
map.resources :photos, :member => { :prepare => [:get, :post] }

# new to rails 2.2.2, not sure when it was first introduced but confirmed use in 2.2.2
# generates RESTful routes for only that specified action
# saves resources and memory by not generating unused routes 
map.resources :sessions, :only => [:new]

# generate all RESTful routes except specified action
map.resources :photos, :except => :destroy

# shallow nesting
map.resources :blogs, :shallow => true do |blog|
  blog.resources :comments 
end
# ex.
# /blogs/1          ==> blog_path(1)
# /blogs/1/comments ==> blog_comments_path(1)
# /comments/2       ==> comment_path(2)

# creating index and root routes
map.index :controller => "pages", :action => "main"
map.root :index

# sort of like a catch all
map.connect '', :controller => "pages", :action => "main"




