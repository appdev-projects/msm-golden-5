class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render({ :template => "directors/index.html.erb" })
  end
  
  def show
    director_id = params.fetch(:director_id) 
    @director = Director.where({ :id => director_id }).first
    render({ :template => "directors/show.html.erb" })

  end
  
  def create
    director = Director.new
    director.name = params.fetch(:name)
    director.dob = params.fetch(:dob)
    director.bio = params.fetch(:bio)
    director.image_url = params.fetch(:image_url)
    director.save
    redirect_to("/directors/#{director.id}")

  end
  
  def update
    director_id = params.fetch(:director_id) 
    director = Director.where({ :id => director_id }).first
    director.name = params.fetch(:name)
    director.dob = params.fetch(:dob)
    director.bio = params.fetch(:bio)
    director.image_url = params.fetch(:image_url)

    director.save
    redirect_to("/directors/#{director.id}")
    
  end
  
  def delete
    director_id = params.fetch(:director_id) 
    director = Director.where({ :id => director_id }).first
    director.destroy
    redirect_to("/directors")

  end
end
