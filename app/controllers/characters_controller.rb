class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render({ :template => "characters/index.html.erb" })
    
  end
  
  def show
    character_id = params.fetch(:character_id)
    @character = Character.where({ :id => character_id }).first
    render({ :template => "characters/show.html.erb" })

  end
  
  def create
    character = Character.new
    character.name = params.fetch(:name)
    character.actor_id = params.fetch(:actor_id)
    character.movie_id = params.fetch(:movie_id)
    character.save

    redirect_to("/characters/#{character.id}")

  end
  
  def update
    character_id = params.fetch(:character_id)
    character = Character.where({ :id => character_id }).first
    character.name = params.fetch(:name)
    character.actor_id = params.fetch(:actor_id)
    character.movie_id = params.fetch(:movie_id)
    character.save
    
    redirect_to("/characters/#{character.id}")
  end
  
  def delete
    character_id = params.fetch(:character_id)
    character = Character.where({ :id => character_id }).first
    character.destroy
    redirect_to("/characters/#{character.id}")

  end
end
