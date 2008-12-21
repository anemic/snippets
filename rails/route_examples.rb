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

# adding actions and map to request type
map.resources :blogs, :collection => { :feed => :get }

# adding RESTful actions and request types 
map.resources :users, :member => {:invite => :post, :create_invite => :post}

# new to rails 2.2.2, not sure when it was first introduced but confirmed use in 2.2.2
# generates RESTful routes for only that specified action
# saves resources and memory by not generating unused routes 
map.resources :sessions, :only => [:new]

# generate all RESTful routes except specified action
map.resources :photos, :except => :destroy

# shallow nesting
# /blogs/1          ==> blog_path(1)
# /blogs/1/comments ==> blog_comments_path(1)
# /comments/2       ==> comment_path(2)
map.resources :blogs, :shallow => true do |blog|
  blog.resources :comments 
end




