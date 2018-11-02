class TicketsController < ApplicationController
  def new
    @showtime = Showtime.find(params[:showtime_id])
  end

  def create
    ticket = Ticket.new(
                         showtime_id: params[:showtime_id].to_i,
                         full_name: params[:full_name],
                         email: params[:email],
                         credit_card_number: params[:credit_card_number],
                         expiration_date: params[:expiration_date]
                         )

    ticket.save

    if ticket.save
     ticket.increment
     flash[:success] = "Your ticket to #{@showtime.movie.title} was purchased. Check you email now! "
     redirect_to '/'
    end

    flash[:success] = "Ticket bought"
    redirect_to '/'
  end
end
