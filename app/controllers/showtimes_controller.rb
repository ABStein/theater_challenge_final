class ShowtimesController < ApplicationController
  def new

  end

  def create
    showtime = Showtime.new(
                            movie_id: params[:movie_id],
                            theater_id: params[:theater_id],
                            start_time: params[:start_time]
                            )

    showtime.save

    if showtime.save
    flash[:success] = "Your have created a new showtime, nice."
    redirect_to '/'
    else
      flash[:warning] = "There was a problem with your request, please try again."
      redirect_to '/showtimes/new'
    end
  end
end
