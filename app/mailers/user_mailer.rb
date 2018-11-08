class UserMailer < ApplicationMailer
  default from: ENV['GMAIL_USERNAME']

  def email_receipt(receipt, ticket)
    @receipt = receipt
    @url  = '/'

    mg_client = Mailgun::Client.new ENV['API_KEY']

    message_params = {:from    => ENV['GMAIL_USERNAME'],
                      :to      => ticket.email,
                      :subject => "Receipt from AB's Flicks",
                      :html => "<html><body><h2>Order Details</h2><ul> <li>Name: #{ticket.full_name}</li><br> <li>Email: #{ticket.email}</li><br> <li>Movie: #{ticket.showtime.movie.title}</li><br> <li>When: #{ticket.showtime.start_time.strftime(' %A %B %e at %l:%M %p')}</li><br> <li>Theater: #{ticket.showtime.theater.name}</li> </ul></body></html>"
                      }

    mg_client.send_message ENV['MAILGUN_DOMAIN'], message_params
  end
end
