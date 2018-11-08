class ShowtimesController < ApplicationController
  def new
    @movies = Movie.all
    @theaters = Theater.all
  end

  def create
    showtime = Showtime.new(
                            movie_id: params[:movie_id],
                            theater_id: params[:theater_id],
                            start_time: params[:start_time]
                            )

    showtime.save

    # conditional to check validations on whether the fields met the criteria
    if showtime.save
    flash[:success] = "Your have created a new showtime, nice."
    redirect_to '/'
    else
      flash[:warning] = "There was a problem with your request, please try again."
      redirect_to '/showtimes/new'
    end

    def edit
      @showtime = Showtime.find(params[:id])
    end

    def update
      @showtime = Showtime.find_by(id: params[:id])
      @showtime.assign_attributes(
                                  movie_id: params[:movie_id],
                                  theater_id: params[:theater_id],
                                  start_time: params[:start_time]
                                  )

      @showtime.save
      flash[:success] = "Showtime successfully updated"
      redirect_to "/"
    end
  end
end
