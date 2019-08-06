class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render({ :template => "actors/index.html.erb" })
  end
  
  def show
    actor_id = params.fetch(:actor_id) 
    @actor = Actor.where({ :id => actor_id }).first
    render({ :template => "actors/show.html.erb" })
  end
  
  def create
    actor = Actor.new
    actor.name = params.fetch(:name)
    actor.dob = params.fetch(:dob)
    actor.bio = params.fetch(:bio)
    actor.image_url = params.fetch(:image_url)
    
    actor.save
    
    redirect_to("/actors/#{actor.id}")
  end
  
  def update
    actor_id = params.fetch(:actor_id) 
    actor = Actor.where({ :id => actor_id }).first
    actor.name = params.fetch(:name)
    actor.dob = params.fetch(:dob)
    actor.bio = params.fetch(:bio)
    actor.image_url = params.fetch(:image_url)
    
    actor.save
    
    redirect_to("/actors/#{actor.id}")

  end
  
  def delete
    actor_id = params.fetch(:actor_id) 
    actor = Actor.where({ :id => actor_id }).first
    actor.destroy
    
    redirect_to("/actors")

  end
end
