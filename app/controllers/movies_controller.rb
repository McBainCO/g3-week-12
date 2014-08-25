class MoviesController < ApplicationController

  def index
    @movies = Movie.order(:year)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(allowed_params)
     if @movie.save
       redirect_to root_path
     else
      render :new
     end
  end




  private
  def allowed_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end

end

