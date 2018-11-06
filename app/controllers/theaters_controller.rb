class TheatersController < ApplicationController
  def new

  end

  def create
    theater = Theater.new(
                          name: params[:name],
                          seat_capacity: params[:seat_capacity]
                          )

    theater.save

    # Checking validations
    if theater.save
      flash[:success] = "Add a theater to the rotation."
      redirect_to '/'
    else
      flash[:warning] = "Theres been a problem please try again."
      redirect_to '/theaters/new'
    end
  end

end
