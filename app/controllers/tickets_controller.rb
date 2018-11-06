class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    @showtimes = Showtime.all
    order_tickets = params[:sort_order]

    if order_tickets
      @tickets = Ticket.all.order(:movie)
    end
  end

  def new
    @showtime = Showtime.find(params[:showtime_id]) #this breaks when incorrect credit card
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
    puts ticket.errors.full_messages

    if ticket.showtime.sold_out?
      flash[:warning] = "This movie is sold out, check out our other sweet flicks."
    elsif ticket.save
     flash[:success] = "Your ticket to #{ticket.showtime.movie.title} was purchased. Check you email now! "
     redirect_to '/'
    else
      flash[:warning] = "There has been a problem please try again."
      redirect_to "/tickets/new?showtime_id=#{ticket.showtime_id}"
    end
  end
end
