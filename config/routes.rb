ActionController::Routing::Routes.draw do |map|


# => The Players Module Of Sunu-ligua
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	map.resources :players

# => The Club Module Of Sunu-ligua
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  map.resources :clubs  do |club|
  	club.resources :teams do |team|
  		team.resources :team_players, :as => 'team-players'
  	end
  end

# => Additionnal Resources Of Sunuliga
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  map.resources :teamcategories
  map.resources :positions
  map.root :clubs

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

