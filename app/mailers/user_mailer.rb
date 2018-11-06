class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def email_reciept
    @ticket = params[:ticket]
    @url  = '/tickets/new'

    mail to: @ticket.email,
        subject: "Thanks for stopping by, here's a copy of your receipt to see #{@ticket.shwotime.movie.title}!"
  end
end
