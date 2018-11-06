class TheatersController < ApplicationController
  def new

  end

  def create
    theater = Theater.new(
                          name: params[:name],
                          seat_capacity: params[:seat_capacity]
                          )

    theater.save
    flash[:success] = "Add a theater to the rotation."
    redirect_to '/'
  end

end
