# README

This app is designed for movie owners and goers alike to find and sell tickets to their movie of choice.

* Schema Design

  After much deliberation I believe this is the way the schema design should like for an app like this based on the needs of the cinema owner as well as being as user friendly as possible without an admin/user framework involved.

  ![Schema](https://github.com/ABStein/theater_challenge_final/blob/master/schema%20design.png)

* App design

  I decided to use ruby on rails for this project using OOP practices as well as leveraging activerecord to the best of its ability. One part of this project which I found to be a bit challenging was figuring out how to maintain ticket sales attached to specific cutsomers while not using a cart and an admin/user portal since technically the user has the ability to edit or delete a movie at will, but since this is going to our client first, I opted to keep it this way and with more time add in the ability for a admin/user portal that would not let the user do anything besides buy a ticket, while giving the cinema owner the ability to modify movies, showtimes, view ticket sales etc.

  Another aspect of this app that I am proud of is having an order dashboard that I have a link to in the navbar, that not only shows all the tickets bought, but at the top of the page will also show the amount of tickets purchased per movie as they are bought and will continue to update as more movies are added/more tickets are purchased. I also added a seperate URL located via the "Orders by Movie" tab in the navbar for the owner to order all the tickets based on movie. My original thought was to have a `seats_sold` attribute for showtimes and increment it when a ticket is bought, and decrement `seat_capacity` on my theaters table simultaneously but I found that adding a model method that will count the tickets, and compare that against our `seat_capacity` attribute for `theater` to logically make more sense since a theater is not losing seats they are just being bought. This is also great for our client since it is less cumbersome when there are returns for the tickets, or maybe 2 people order the last ticket at the same time, this will automatically trigger the logic for `seats_sold` and `sold_out` model methods which are also located in the front end to ensure this.

  Speaking of the navbar, you will see another section for adding theaters, showtimes, and movies which is simple and easy for the owner who knows everything about their cinema and can grow with their business. Again, this harkens back to the user not seeing this through having seperate admin/user portals, but for now this will work just fine.

  Now lets talk about validations. This was a bit tricky, but what I feel for now is a great solution is making sure the customer can't enter a completely bogus credit card number or expiration date for ticket purchases, and they definitely have to enter their name, obviously the best thing for this would be a credit card processor to completely validate the number and expiration date but this will work for now.

  For the customers I added a bootstrap `disabled` button "Sold Out" in place of "Buy Ticket" when the movie is sold out so they wont buy a movie that is sold out.

  For email confirmations I decided to use Mailgun and ActionMailer. I had to mess around with configurations for a bit but eventually got it however, since I would have needed to get a domain and add the DNS confirmations to allow mailgun to send an email to any user who has entered an email for a ticket and there is no working domain through heroku this will work via the sandbox domain for them. If I add authorized recipients, this will do for now. I used the figaro gem to store all passwords, usernames, domains, and api keys without having to store them in the codebase on github.

* Wishes/If I had more time

  If I had more time and resources I would love to add a credit card processor, and seperate user/admin portals as mentioned above. I would obvisouly like to spruce the site up a bit with some more javascript and a framework for it, as well as better styling. I would also like to get a domain vaildated through mailgun to accept any email that a user will use and add validations where I left comments in `ticket.rb`.

  All in all as a solid POC with a backend that works very well, this app is not only malleable to suit the needs of the cinema owner, and very user friendly, but is also easy to add more exciting features later on to make it that much better.
