class TicketsController < ApplicationController
  def new
    @showtime = Showtime.find(params[:showtime_id])
  end

  def create
    ticket = Ticket.new(
                         showtime_id: params[:showtime_id],
                         full_name: params[:full_name],
                         email: params[:email],
                         credit_card_number: params[:credit_card_number],
                         expiration_date: params[:expiration_date]
                         )

    ticket.save

    if ticket.save
     ticket.showtime.increment!(:seats_sold)
     ticket.showtime.theater.decrement!(:seat_capacity)
     flash[:success] = "Your ticket to #{ticket.showtime.movie.title} was purchased. Check you email now! "
     redirect_to '/'
    elsif
      ticket.showtime.theater.seat_capacity == 0
      flash[:warning] = "This movie is sold out, check out our other sweet flicks."
    else
      flash[:warning] = "This has been a problem please try again."
      redirect_to '/tickets/new'

    end
  end
end
