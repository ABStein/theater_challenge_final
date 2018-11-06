# README

This app is designed for movie owners and goers alike to find and sell tickets to their movie of choice.

* Schema Design 
  
  After much deliberation I believe this is the way the schema design should like for an app like this based on the needs of the cinema owner as well as being user friendly to the user as possible without an admin/user framework involved. 
  
  ![Schema](https://github.com/ABStein/theater_challenge_final/blob/master/schema%20design.png)
  
* App design  
  
  I decided to use ruby on rails for this project using OOP practices as well as leveraging activerecord to the best of its ability. One part of this project which I found to be a bit challenging was figuring out how to maintain ticket sales attached to specific cutsomers while not using a cart and an admin/user portal since technically the user has the ability to edit or delete a movie at will, but since this is going to our client first, I opted to keep it this way and with more time add in the ability for a admin/user portal that would not let the user do anything besides buy a ticket, while giving the cinema owner the ability to modify movies, showtimes, view ticket sales etc.
  
  Another aspect of this app that I am proud of is having an order dashboard that I have a link to in the navbar, that not only shows all the tickets bought, but at the top of the page it will also show the amount of tickets purchased per movie as they are bought and will continue to update as more movies are added/more tickets are purchased. I also added a seperate URL located via the "Orders by Movie" tab in the navbar for the owner to order all the tickets based on movie. My original thought was to have a `seats_sold` attribute for showtimes and increment it when a tiket is bought, and decrement `seat_capacity` simultaneously but I found that adding a model method that will count the tickets, and compare that against our `seat_capacity` attribute for `theater` to be more user friendly and logically make more sense since a theater is not losing seats they are just being bought. This is also great for our client and less cumbersome when there are returns for the tickets, or maybe 2 people order the last ticket at the same time, this will automatically trigger the logic for seats_sold and sold_out model methods which are also located in the front end to ensure this.    
  
  Speaking of the navbar, you will see another section for adding theaters, showtimes, and movies which is simple and easy for the owner who knows everything about their cinema and can grow with their business. Again, this harkens back to the user not seeing this through having seperate admin/user portals, but for now this will work just fine.
  
  Now lets talk about validations. This was a bit tricky, but what I feel for now is a great solution is making sure for ticket purchases that the customer can't enter a completely bogus credit card number or expiration date, and they definitely have to enter their name, obviously the best thing for this would be a credit card processor. 
  
  For the customers I added a bootstrap `disabled` button "Sold Out" in place of "Buy Ticket" when the movie is sold out so they wont buy a movie that is sold out. 
  

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
