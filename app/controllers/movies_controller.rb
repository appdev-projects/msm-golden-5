class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render({ :template => "movies/index.html.erb" })
  end
  
  def show
    movie_id = params.fetch(:movie_id) 
    @movie = Movie.where({ :id => movie_id }).first
    render({ :template => "movies/show.html.erb" })
  end
  
  def create
    movie = Movie.new
    movie.title = params.fetch(:title)
    movie.year = params.fetch(:year)
    movie.duration = params.fetch(:duration)
    movie.description = params.fetch(:description)
    movie.image_url = params.fetch(:image_url)
    movie.director_id = params.fetch(:director_id)

    movie.save
    redirect_to("/movies/#{movie.id}")
  end
  
  def update
    movie_id = params.fetch(:movie_id) 
    movie = Movie.where({ :id => movie_id }).first
    movie.title = params.fetch(:title)
    movie.year = params.fetch(:year)
    movie.duration = params.fetch(:duration)
    movie.description = params.fetch(:description)
    movie.image_url = params.fetch(:image_url)
    movie.director_id = params.fetch(:director_id)
    movie.save
    redirect_to("/movies/#{movie.id}")
  end
  
  def delete
    movie_id = params.fetch(:movie_id) 
    movie = Movie.where({ :id => movie_id }).first
    movie.destroy
    redirect_to("/movies")
  end
end
