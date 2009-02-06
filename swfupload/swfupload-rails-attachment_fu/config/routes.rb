ActionController::Routing::Routes.draw do |map|

  # Added custom post action (swfupload) to the photo resource
  map.resources :photos, :collection => { :swfupload => :post }
  map.root :controller => "photos"

end
