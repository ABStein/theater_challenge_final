class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new

  end

  def create
    movie = Movie.new(
                     title: params[:title],
                     rating: params[:rating],
                     runtime: params[:runtime],
                     img: params[:img]
                     )

     movie.save
     flash[:success] = "Movie successfully Created"
     showtime
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.assign_attributes(
                            title: params[:title],
                            rating: params[:rating],
                            runtime: params[:runtime],
                            img: params[:img]
                            )

    @movie.save
    flash[:success] = "Movie successfully updated"
    redirect_to "/"
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:warning] = "Movie Deleted"
    redirect_to "/"
  end
end
