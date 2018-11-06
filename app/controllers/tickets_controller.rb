class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    @showtimes = Showtime.all
    order_tickets = params[:sort_order]

    # this conditional is for have sorting the tickets bought by movie
    if order_tickets
      @tickets = Ticket.all.order(:movie)
    end
  end

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

    # This conditional is for accuratletly displaying to the user whether or not they are able to buy a movie, as well as validations for the creation of a ticket
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
