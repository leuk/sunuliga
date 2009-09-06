ActionController::Routing::Routes.draw do |map|
  map.resources :teamcategories


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# The Club Module Of Sunu-ligua
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  map.resources :clubs  do |club|
  	club.resources :teams
  end

  map.root :clubs

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

