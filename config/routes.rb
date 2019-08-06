Rails.application.routes.draw do

  match("/", {:controller => "movies", :action => "index", :via => "get" })
  
  match("/movies", {:controller => "movies", :action => "index", :via => "get" })
  match("/movies/:movie_id", {:controller => "movies", :action => "show", :via => "get" })
  match("/create_movie", {:controller => "movies", :action => "create", :via => "get" })
  match("/update_movie/:movie_id", {:controller => "movies", :action => "update", :via => "get" })
  match("/delete_movie/:movie_id", {:controller => "movies", :action => "delete", :via => "get" })
  
  match("/directors", {:controller => "directors", :action => "index", :via => "get" })
  match("/directors/:director_id", {:controller => "directors", :action => "show", :via => "get" })
  match("/create_director", {:controller => "directors", :action => "create", :via => "get" })
  match("/update_director/:director_id", {:controller => "directors", :action => "update", :via => "get" })
  match("/delete_director/:director_id", {:controller => "directors", :action => "delete", :via => "get" })
  
  match("/actors", {:controller => "actors", :action => "index", :via => "get" })
  match("/actors/:actor_id", {:controller => "actors", :action => "show", :via => "get" })
  match("/create_actor", {:controller => "actors", :action => "create", :via => "get" })
  match("/update_actor/:actor_id", {:controller => "actors", :action => "update", :via => "get" })
  match("/delete_actor/:actor_id", {:controller => "actors", :action => "delete", :via => "get" })
  
  match("/characters", {:controller => "characters", :action => "index", :via => "get" })
  match("/characters/:character_id", {:controller => "characters", :action => "show", :via => "get" })
  match("/create_character", {:controller => "characters", :action => "create", :via => "get" })
  match("/update_character/:character_id", {:controller => "characters", :action => "update", :via => "get" })
  match("/delete_character/:character_id", {:controller => "characters", :action => "delete", :via => "get" })
  
  
  
  
  # =================================================
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
