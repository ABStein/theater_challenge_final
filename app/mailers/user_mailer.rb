class UserMailer < ApplicationMailer
  default from: ENV['GMAIL_USERNAME']

  def email_receipt(receipt, ticket)
    @receipt = receipt
    @url  = '/'

    mg_client = Mailgun::Client.new ENV['API_KEY']

    message_params = {:from    => ENV['GMAIL_USERNAME'],
                      :to      => ticket.email,
                      :subject => "Receipt from AB's Flicks",
                      :html => "<html><body><h1>Order Deatails</h1><p>You have successfully bought a ticket to #{ticket.showtime.movie.title} for #{ticket.showtime.start_time.strftime(' %A %B %e %l:%M %p')}. Enjoy the show!</p></body></html>"
                      }

    mg_client.send_message ENV['MAILGUN_DOMAIN'], message_params
  end
end
