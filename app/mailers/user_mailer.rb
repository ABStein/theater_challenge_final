class UserMailer < ApplicationMailer
  default from: 'abs19stein@gmail.com'

  def email_receipt(receipt, ticket)
    @receipt = receipt
    @url  = '/tickets/new'

    mg_client = Mailgun::Client.new ENV['API_KEY']

    message_params = {:from    => ENV['GMAIL_USERNAME'],
                      :to      => ticket.email,
                      :subject => "receipt from AB's Flicks",
                      :text    => 'Enjoy the Show!'}

    mg_client.send_message ENV['MAILGUN_DOMAIN'], message_params
  end
end
